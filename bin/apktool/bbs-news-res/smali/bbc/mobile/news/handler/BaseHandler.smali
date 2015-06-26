.class public Lbbc/mobile/news/handler/BaseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BaseHandler.java"


# instance fields
.field private mResult:Lbbc/mobile/news/model/BaseModel;

.field private nodeText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lbbc/mobile/news/handler/BaseHandler;->nodeText:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 27
    new-array v1, p3, [C

    .line 29
    .local v1, dest:[C
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 30
    .local v0, buffer:Ljava/nio/CharBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 33
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, fragment:Ljava/lang/String;
    iget-object v3, p0, Lbbc/mobile/news/handler/BaseHandler;->nodeText:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbbc/mobile/news/handler/BaseHandler;->nodeText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected clearNodeText()V
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    iput-object v0, p0, Lbbc/mobile/news/handler/BaseHandler;->nodeText:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public getNodeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbbc/mobile/news/handler/BaseHandler;->nodeText:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lbbc/mobile/news/model/BaseModel;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbbc/mobile/news/handler/BaseHandler;->mResult:Lbbc/mobile/news/model/BaseModel;

    return-object v0
.end method

.method protected final setResult(Lbbc/mobile/news/model/BaseModel;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 16
    iput-object p1, p0, Lbbc/mobile/news/handler/BaseHandler;->mResult:Lbbc/mobile/news/model/BaseModel;

    .line 17
    return-void
.end method
