// FILES

CREATE (f:File {name: "DateUtil"}) RETURN f;
CREATE (f:File {name: "Gateway"}) RETURN f;
CREATE (f:File {name: "PayPalGateway"}) RETURN f;
CREATE (f:File {name: "Payment"}) RETURN f;
CREATE (f:File {name: "PaymentProcessor"}) RETURN f;
CREATE (f:File {name: "PaymentValidator"}) RETURN f;
CREATE (f:File {name: "StringUtil"}) RETURN f;
CREATE (f:File {name: "StripeGateway"}) RETURN f;

// LINES

// DateUtil
CREATE (l:Line {number: "DateUtil#9", text: "public static Date currentDate() {"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "DateUtil#9" AND f.name = "DateUtil"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "DateUtil#9" AND f.name = "DateUtil"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// Gateway
CREATE (l:Line {number: "Gateway#4", text: "Payment process(Payment payment);"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "Gateway#4" AND f.name = "Gateway"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Gateway#4" AND f.name = "Gateway"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// PayPalGateway
CREATE (l:Line {number: "PayPalGateway#5", text: "public Payment process(Payment payment) {"}) RETURN l;
CREATE (l:Line {number: "PayPalGateway#6", text: "payment.setProcessed(DateUtil.currentDate());"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "PayPalGateway#5" AND f.name = "PayPalGateway"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PayPalGateway#5" AND f.name = "PayPalGateway"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PayPalGateway#6" AND f.name = "PayPalGateway"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PayPalGateway#6" AND f.name = "PayPalGateway"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// Payment
CREATE (l:Line {number: "Payment#12", text: "public Long getId() {"}) RETURN l;
CREATE (l:Line {number: "Payment#16", text: "public void setId(Long id) {"}) RETURN l;
CREATE (l:Line {number: "Payment#20", text: "public Long getGateway() {"}) RETURN l;
CREATE (l:Line {number: "Payment#24", text: "public void setGateway(String gateway) {"}) RETURN l;
CREATE (l:Line {number: "Payment#28", text: "public Long getProcessed() {"}) RETURN l;
CREATE (l:Line {number: "Payment#32", text: "public void setProcessed(Date processed) {"}) RETURN l;
CREATE (l:Line {number: "Payment#36", text: "public Long getReference() {"}) RETURN l;
CREATE (l:Line {number: "Payment#40", text: "public void setReference(String reference) {"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#12" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#12" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#16" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#16" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#20" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#20" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#24" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#24" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#28" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#28" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#32" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#32" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#36" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#36" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "Payment#40" AND f.name = "Payment"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "Payment#40" AND f.name = "Payment"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// PaymentProcessor
CREATE (l:Line {number: "PaymentProcessor#5", text: "public boolean authorize(Payment payment) {"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#6", text: "return PaymentValidator.validate(payment) && process(payment);"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#9", text: "public boolean refund(Payment payment) {"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#10", text: "return PaymentValidator.validate(payment) && process(payment);"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#13", text: "private boolean process(Payment payment) {"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#15", text: "switch (payment.getGateway()) {"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#17", text: "result = new PayPalGateway().process(payment);"}) RETURN l;
CREATE (l:Line {number: "PaymentProcessor#20", text: "result = new StripeGateway().process(payment);"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#5" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#5" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#6" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#6" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#9" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#9" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#10" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#10" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#13" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#13" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#17" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#17" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#20" AND f.name = "PaymentProcessor"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentProcessor#20" AND f.name = "PaymentProcessor"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// PaymentValidator
CREATE (l:Line {number: "PaymentValidator#7", text: "public static boolean validate(Payment payment) {"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "PaymentValidator#7" AND f.name = "PaymentValidator"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "PaymentValidator#7" AND f.name = "PaymentValidator"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// StringUtil
CREATE (l:Line {number: "StringUtil#9", text: "public static String random() {"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "StringUtil#9" AND f.name = "StringUtil"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "StringUtil#9" AND f.name = "StringUtil"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// StripeGateway
CREATE (l:Line {number: "StripeGateway#5", text: "public Payment process(Payment payment) {"}) RETURN l;
CREATE (l:Line {number: "StripeGateway#6", text: "payment.setProcessed(DateUtil.currentDate());"}) RETURN l;
CREATE (l:Line {number: "StripeGateway#7", text: "payment.setReference(StringUtil.random());"}) RETURN l;

MATCH (l:Line), (f:File)
WHERE l.number = "StripeGateway#5" AND f.name = "StripeGateway"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "StripeGateway#5" AND f.name = "StripeGateway"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "StripeGateway#6" AND f.name = "StripeGateway"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "StripeGateway#6" AND f.name = "StripeGateway"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

MATCH (l:Line), (f:File)
WHERE l.number = "StripeGateway#7" AND f.name = "StripeGateway"
CREATE (l)-[r:BELONGS_TO]->(f)
RETURN r;
MATCH (l:Line), (f:File)
WHERE l.number = "StripeGateway#7" AND f.name = "StripeGateway"
CREATE (l)<-[r:CONTAINS]-(f)
RETURN r;

// FUNCTIONS

CREATE (f:Function {name: "Long getId()"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#12" AND f.name = "Long getId()"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "void setId(Long id)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#16" AND f.name = "void setId(Long id)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "String getGateway()"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#20" AND f.name = "String getGateway()"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#15" AND f.name = "String getGateway()"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "void setGateway(String gateway)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#24" AND f.name = "void setGateway(String gateway)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "Date getProcessed()"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#28" AND f.name = "Date getProcessed()"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "void setProcessed(Date processed)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#32" AND f.name = "void setProcessed(Date processed)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PayPalGateway#6" AND f.name = "void setProcessed(Date processed)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "StripeGateway#6" AND f.name = "void setProcessed(Date processed)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "String getReference()"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#36" AND f.name = "String getReference()"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "void setReference(String reference)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Payment#40" AND f.name = "void setReference(String reference)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "Date currentDate()"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "DateUtil#9" AND f.name = "Date currentDate()"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PayPalGateway#6" AND f.name = "Date currentDate()"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "StripeGateway#6" AND f.name = "Date currentDate()"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "Payment process(Payment payment)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "Gateway#4" AND f.name = "Payment process(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;
MATCH (l:Line), (f:Function)
WHERE l.number = "PayPalGateway#5" AND f.name = "Payment process(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;
MATCH (l:Line), (f:Function)
WHERE l.number = "StripeGateway#5" AND f.name = "Payment process(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#17" AND f.name = "Payment process(Payment payment)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#20" AND f.name = "Payment process(Payment payment)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "boolean authorize(Payment payment)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#5" AND f.name = "boolean authorize(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "boolean refund(Payment payment)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#9" AND f.name = "boolean refund(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "boolean process(Payment payment)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#13" AND f.name = "boolean process(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#6" AND f.name = "boolean process(Payment payment)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#10" AND f.name = "boolean process(Payment payment)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "boolean validate(Payment payment)"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentValidator#7" AND f.name = "boolean validate(Payment payment)"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#6" AND f.name = "boolean validate(Payment payment)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "PaymentProcessor#10" AND f.name = "boolean validate(Payment payment)"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;

CREATE (f:Function {name: "String random()"}) RETURN f;

MATCH (l:Line), (f:Function)
WHERE l.number = "StringUtil#9" AND f.name = "String random()"
CREATE (l)<-[r:DEFINED_AT]-(f)
RETURN r;

MATCH (l:Line), (f:Function)
WHERE l.number = "StripeGateway#7" AND f.name = "String random()"
CREATE (l)<-[r:REFERENCED_AT]-(f)
RETURN r;