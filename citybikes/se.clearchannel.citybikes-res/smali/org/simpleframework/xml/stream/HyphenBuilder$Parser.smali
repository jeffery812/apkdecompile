.class Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;
.super Lorg/simpleframework/xml/stream/Splitter;
.source "HyphenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/HyphenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/stream/HyphenBuilder;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "source"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->this$0:Lorg/simpleframework/xml/stream/HyphenBuilder;

    .line 95
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Splitter;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/HyphenBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;-><init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected commit([CII)V
    .locals 2
    .parameter "text"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 125
    add-int v0, p2, p3

    iget v1, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->count:I

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    return-void
.end method

.method protected parse([CII)V
    .locals 1
    .parameter "text"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 109
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->toLower(C)C

    move-result v0

    aput-char v0, p1, p2

    .line 110
    return-void
.end method
