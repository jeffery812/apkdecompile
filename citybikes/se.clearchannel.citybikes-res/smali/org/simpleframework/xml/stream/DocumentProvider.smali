.class Lorg/simpleframework/xml/stream/DocumentProvider;
.super Ljava/lang/Object;
.source "DocumentProvider.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field private final factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 56
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 57
    return-void
.end method

.method private provide(Lorg/xml/sax/InputSource;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v2, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 97
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 99
    .local v1, document:Lorg/w3c/dom/Document;
    new-instance v2, Lorg/simpleframework/xml/stream/DocumentReader;

    invoke-direct {v2, v1}, Lorg/simpleframework/xml/stream/DocumentReader;-><init>(Lorg/w3c/dom/Document;)V

    return-object v2
.end method


# virtual methods
.method public provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentProvider;->provide(Lorg/xml/sax/InputSource;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object v0

    return-object v0
.end method

.method public provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentProvider;->provide(Lorg/xml/sax/InputSource;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object v0

    return-object v0
.end method
