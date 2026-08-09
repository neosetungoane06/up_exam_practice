import 'package:flutter/material.dart';
import 'package:up_exam_practice/modules/wtw134/widgets/math_notes_screen.dart';
import 'package:up_exam_practice/models/study_location.dart';

class TheChainRuleScreen extends StatelessWidget {
const TheChainRuleScreen({super.key});

@override
Widget build(BuildContext context) {
return const MathNotesScreen(
title: "The Chain Rule",

location: StudyLocation(
module: "WTW134",
topic: "Theme 2 Differentiation",
subtopic: "The Chain Rule",
),
images: [
"assets/modules/wtw134/theme2/chain_rule_composite_function.png",
"assets/modules/wtw134/theme2/chain_rule_flowchart.png",
  "assets/modules/wtw134/theme2/chain_rule_visual_layers.png",
  "assets/modules/wtw134/theme2/chain_rule_tree_diagram.png",
  "assets/modules/wtw134/theme2/product_rule_chain_rule.png",
  "assets/modules/wtw134/theme2/quotient_rule_derivation.png",



],

notes: [

  "### WTW134 ",
  "## The Chain Rule",

  "Every formula you learned in Unit 2.1 only works directly on x itself. The Chain Rule removes that restriction — it lets every one of those seven formulas work on a composite function instead of just x.",

  "",

  "### Composite Functions",

  "",
  "Composite functions are written using one function inside another.",

  "",
  "[IMAGE]",
  "",

  "",
  r"$f(g(x))$ means that the output of $g(x)$ becomes the input of $f$.",

  "",
  "Always evaluate the inside function first.",
  "Then evaluate the outside function.",

  r"$f(g(x))$ is called a composite function: $g$ is the inside function, and $f$ is the outside function.",

  "",

  "### Why We Need a New Rule",

  r"Expand $y=(2x+1)^3=8x^3+12x^2+6x+1$ and differentiate directly:",
  r"$$\frac{dy}{dx}=24x^2+24x+6=6(4x^2+4x+1)=6(2x+1)^2=2\times3(2x+1)^2$$",

  "",

  r"Notice the structure: $3(2x+1)^2$ is the Power Rule applied to the outside, treating $2x+1$ as a single block, multiplied by $2$ — the derivative of the inside function $2x+1$. Differentiate the outside, keep the inside unchanged, then multiply by the derivative of the inside. That pattern IS the Chain Rule.",

  "### The Chain Rule",

  "",
  "",
  "### Chain Rule Procedure",

  "",
  "[IMAGE]",
  "",

  "The Chain Rule always follows exactly the same procedure.",

  "",
  "1. Identify the outside function.",
  "2. Leave the inside function exactly as it is.",
  "3. Differentiate the outside function.",
  "4. Multiply by the derivative of the inside function.",
  "5. Simplify only after the differentiation is complete.",
  "",
  "Never change the inside function until the outside has been differentiated.",


  "",
  "Never differentiate the inside first.",
  "Always differentiate the outside first.",

  r"$$\frac{d}{dx}f(g(x))=f'(g(x))\times g'(x) \qquad\text{or}\qquad \frac{dy}{dx}=\frac{dy}{dz}\times\frac{dz}{dx}$$",

  "### The Seven Formulas, Extended",

  "",
  "### Recognising Composite Functions",

  "You should immediately think 'Chain Rule' whenever one function is inside another.",

  "",
  "Examples:",

  r"• $(3x+2)^5$",
  r"• $\ln(x^2+1)$",
  r"• $e^{5x}$",
  r"• $\sin(x^3)$",
  r"• $\cos(2x+1)$",
  r"• $\sqrt{4-x}$",

  "Every formula from Unit 2.1 now has a composite version — same structure, multiplied by the derivative of whatever is inside:",

  "",

  r"$$\frac{d}{dx}[f(x)]^n=n[f(x)]^{n-1}\cdot f'(x)$$",
  r"$$\frac{d}{dx}e^{f(x)}=e^{f(x)}\cdot f'(x)$$",
  r"$$\frac{d}{dx}a^{f(x)}=(\ln a)a^{f(x)}\cdot f'(x),\qquad a>0$$",
  r"$$\frac{d}{dx}\ln f(x)=\frac{f'(x)}{f(x)},\qquad f(x)>0$$",
  r"$$\frac{d}{dx}\sin f(x)=\cos f(x)\cdot f'(x)$$",
  r"$$\frac{d}{dx}\cos f(x)=-\sin f(x)\cdot f'(x)$$",


  "Notice that every formula keeps the inside expression exactly the same.",
  "Only after differentiating the outside do we multiply by the derivative of the inside.",
  "",

  "The Constant Rule has no chain-rule version — a constant has no \"inside\" to chain through.",


  "### Worked Examples — Single Formula, Chain Rule Only",

  "",

  r"$$f(t)=\sqrt{t^3-e^t} \;\Rightarrow\; f'(t)=\frac{3t^2-e^t}{2\sqrt{t^3-e^t}}$$",

  "",

  r"$$f(x)=(2-3x)^4 \;\Rightarrow\; f'(x)=4(2-3x)^3\times(-3)=-12(2-3x)^3$$",


  "",
  "Notice what stayed unchanged.",

  "",
  "",
  "[IMAGE]",
  "",

  "The inside expression (2−3x) was never differentiated first.",

  "The outside exponent was differentiated first.",

  "Only afterwards was the derivative of (2−3x), namely −3, multiplied.",
  "",

  r"$$f(z)=\ln(1+z^5) \;\Rightarrow\; f'(z)=\frac{5z^4}{1+z^5}$$",

  "",

  r"$$f(z)=1+(\ln z)^5 \;\Rightarrow\; f'(z)=5(\ln z)^4\times\frac1z=\frac{5(\ln z)^4}{z}$$",

  "",

  r"$$f(t)=e^{-2t} \;\Rightarrow\; f'(t)=e^{-2t}\times(-2)=-2e^{-2t}$$",

  "",

  r"$$f(t)=e^{t^4} \;\Rightarrow\; f'(t)=e^{t^4}\times4t^3=4t^3e^{t^4}$$",

  "",

  r"$$f(x)=4^{1-x} \;\Rightarrow\; f'(x)=(\ln4)4^{1-x}\times(-1)=-(\ln4)4^{1-x}$$",

  "",

  r"$$f(x)=5^{x^2-3x} \;\Rightarrow\; f'(x)=(\ln5)5^{x^2-3x}(2x-3)$$",

  "",
  "[IMAGE]",
  "",
  "",

  r"$$f(x)=\ln(x^3-4x) \;\Rightarrow\; f'(x)=\frac{3x^2-4}{x^3-4x}$$",

  "",

  r"$$f(t)=\ln(\cos t) \;\Rightarrow\; f'(t)=\frac{-\sin t}{\cos t}=-\tan t$$",

  "",

  r"$$f(t)=\cos(4t) \;\Rightarrow\; f'(t)=-\sin(4t)\times4=-4\sin(4t)$$",


  "",

  r"$$f(x)=\cos^4(x)=[\cos x]^4 \;\Rightarrow\; f'(x)=4[\cos x]^3\times(-\sin x)=-4\cos^3(x)\sin(x)$$",

  "",

  r"$$f(t)=\sin(1-t^5) \;\Rightarrow\; f'(t)=\cos(1-t^5)\times(-5t^4)=-5t^4\cos(1-t^5)$$",

  "### Combining the Chain Rule with the Product Rule",

  "",
  "[IMAGE]",
  "",

  "The Chain Rule rarely appears alone on a test — it usually sits inside a Product Rule or Quotient Rule problem. This is the biggest jump in difficulty in this unit, so slow down and write out u, u', v, v' explicitly every time.",

  "",

  r"$$\frac{d}{dx}\big[x^4\ln(6x+1)\big] = \Big[\frac{d}{dx}x^4\Big]\ln(6x+1) + x^4\Big[\frac{d}{dx}\ln(6x+1)\Big]$$",
  r"$$= 4x^3\ln(6x+1) + x^4\times\frac{6}{6x+1}$$",

  "",

  r"$f(x)=(1-x)^7e^{-3x}$. Let $u=(1-x)^7,\ u'=7(1-x)^6\times(-1)=-7(1-x)^6$; let $v=e^{-3x},\ v'=-3e^{-3x}$.",
  r"$$f'(x) = -7(1-x)^6e^{-3x} - 3(1-x)^7e^{-3x}$$",


  "",

  r"$f(x)=5^x\ln(x^3+3x)$. Let $u=5^x,\ u'=(\ln5)5^x$; let $v=\ln(x^3+3x),\ v'=\dfrac{3x^2+3}{x^3+3x}$.",
  r"$$f'(x) = (\ln5)5^x\ln(x^3+3x) + 5^x\times\frac{3x^2+3}{x^3+3x}$$",

  "",

  r"$f(t)=t^3\ln(1-t^4)$. Let $u=t^3,\ u'=3t^2$; let $v=\ln(1-t^4),\ v'=\dfrac{-4t^3}{1-t^4}$.",
  r"$$f'(t) = 3t^2\ln(1-t^4) - \frac{4t^6}{1-t^4}$$",

  "### Optional Deeper Dive: Deriving the Quotient Rule",

  "",
  "[IMAGE]",
  "",

  "This is where the Unit 2.1 promise gets kept — the Quotient Rule was never a sixth independent rule. It is the Product Rule and Chain Rule combined.",

  "",

  r"Write $\frac{f}{g}=f\cdot g^{-1}$ and apply the Product Rule:",
  r"$$\frac{d}{dx}\big[f\cdot g^{-1}\big] = f'\cdot g^{-1} + f\cdot\frac{d}{dx}\big[g^{-1}\big]$$",

  "",

  r"Now use the chain-rule power formula (with $n=-1$, inside function $g$) on that last piece:",
  r"$$\frac{d}{dx}\big[g^{-1}\big] = -1\cdot g^{-2}\cdot g' = -\frac{g'}{g^2}$$",

  "",

  "Substituting back:",
  r"$$\frac{d}{dx}\left[\frac{f}{g}\right] = \frac{f'}{g} - \frac{fg'}{g^2} = \frac{f'g-fg'}{g^2}$$",

  "",
  "Notice that the Quotient Rule is not a completely new idea.",
  "It is simply the Product Rule together with the Chain Rule applied to the reciprocal function.",
  "",

  "— exactly the Quotient Rule.",

  "### Combining the Chain Rule with the Quotient Rule",

  "",

  r"$$f(t) = \frac{1-3t}{4t+3^t}$$",
  r"Let $u=1-3t,\ u'=-3$; let $v=4t+3^t,\ v'=4+(\ln3)3^t$ — the Chain Rule is needed on $3^t$.",
  r"$$f'(t) = \frac{-3(4t+3^t) - (1-3t)\big(4+(\ln3)3^t\big)}{(4t+3^t)^2}$$",

  "",

  r"$$f(t) = \frac{5}{\sqrt{1-3^t}} = 5(1-3^t)^{-1/2}$$",
  r"Constant multiple + Chain Rule, with the power rule and exponential rule both nested: the inside function is $1-3^t$, and its derivative is $-(\ln3)3^t$.",
  r"$$f'(t) = 5\times\left(-\tfrac12\right)(1-3^t)^{-3/2}\times\big(-(\ln3)3^t\big) = \frac{5(\ln3)3^t}{2(1-3^t)^{3/2}}$$",

  "### More Single-Formula Chain Rule Practice",

  "",

  r"$$f(x)=\sin(5x) \;\Rightarrow\; f'(x)=5\cos(5x)$$",
  r"$$f(x)=\sin^5(x) \;\Rightarrow\; f'(x)=5\sin^4(x)\cos(x)$$",
  r"$$f(t)=\cos(5^t) \;\Rightarrow\; f'(t)=-(\ln5)5^t\sin(5^t)$$",
  r"$$f(t)=5^{\cos t} \;\Rightarrow\; f'(t)=-(\ln5)(\sin t)5^{\cos t}$$",
  r"$$f(x)=e^{-0.2x} \;\Rightarrow\; f'(x)=-0.2e^{-0.2x}$$",

  "",

  "",
  "⚠ EXAM WARNING",

  "Most students correctly differentiate the outside function but forget to multiply by the derivative of the inside function.",

  "",

  "If the derivative of the inside function is missing, the answer is incorrect even if everything else is perfect.",
  "",

  "### Common Mistakes Specific to the Chain Rule",


  "1. Forgetting to multiply by the derivative of the inside function at all — this is THE signature Chain Rule error.",
  "2. Differentiating the inside function correctly in a side calculation, then forgetting to carry it into the final answer.",
  r"3. Applying the Chain Rule where it is not needed — e.g. treating $e^x$ as $e^{f(x)}$ and multiplying by a phantom derivative of x.",
  "4. In nested problems, losing track of which piece is which — write u, u', v, v' explicitly before combining, every time.",
  r"5. Forgetting domain restrictions carried in from the inside function — e.g. $\ln(x^3-4x)$ needs $x^3-4x>0$, not just $x\neq0$.",

  "",
  "",
  "### Exam Strategy",

  "During tests, never try to recognise the formula immediately.",
  "First identify the outside function.",
  "Then identify the inside function.",
  "Finally differentiate outside × inside derivative.",

  "",
  "This simple habit prevents most Chain Rule mistakes under exam pressure.",

  "### Practice Questions",

  "Differentiate the following:",

  "",

  r"1. $(3x+1)^5$",
  r"2. $e^{t^2}$",
  r"3. $\ln(5x^2+1)$",
  r"4. $\cos(3x^2)$",
  r"5. $\sqrt{4-x^2}$",
  r"6. $x^2e^{3x}$ (product + chain)",
  r"7. $\dfrac{e^{2x}}{x+1}$ (quotient + chain)",

  "",

  "### Answers",

  r"1. $15(3x+1)^4$",
  r"2. $2te^{t^2}$",
  r"3. $\dfrac{10x}{5x^2+1}$",
  r"4. $-6x\sin(3x^2)$",
  r"5. $\dfrac{-x}{\sqrt{4-x^2}}$",
  r"6. $e^{3x}(2x+3x^2)$",
  r"7. $\dfrac{e^{2x}(2x+1)}{(x+1)^2}$",

  "### Mastery Checklist",

  "You have mastered this unit if you can:",

  "",

  "✓ Recognise a composite function on sight and identify the inside and outside functions.",
  "✓ State and apply all six chain-rule versions of the Unit 2.1 formulas.",
  "✓ Apply the Chain Rule inside a Product Rule or Quotient Rule problem without losing track of which piece is which.",
  "✓ Reproduce the derivation of the Quotient Rule from the Product Rule and Chain Rule.",
  "✓ Solve a fully combined, multi-rule problem at the same difficulty as a real test question.",
  "✓ Avoid the common Chain Rule mistakes listed above.",

],
);
}
}