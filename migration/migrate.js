const { initializeApp, cert } = require("firebase-admin/app");
const { getFirestore } = require("firebase-admin/firestore");
const path = require("path");

const serviceAccount = require(
  path.join(__dirname, "serviceAccountKey.json")
);

initializeApp({
  credential: cert(serviceAccount),
});

const db = getFirestore();

async function testConnection() {
  console.log("=================================");
  console.log("Firebase migration connection test");
  console.log("=================================");

  console.log("Project ID:", serviceAccount.project_id);

  // READ ONLY — nothing is created or modified.
  const doc = await db
    .collection("modules")
    .doc("WTW134")
    .get();

  console.log("Firestore connection: SUCCESS");
  console.log("WTW134 document exists:", doc.exists);

  if (doc.exists) {
    console.log("WTW134 data:", doc.data());
  }

  console.log("=================================");
  console.log("READ-ONLY TEST COMPLETE");
  console.log("=================================");
}

testConnection().catch((error) => {
  console.error("=================================");
  console.error("MIGRATION CONNECTION FAILED");
  console.error("=================================");
  console.error(error);
  process.exit(1);
});