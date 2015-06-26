.class Lorg/simpleframework/xml/convert/ConverterFactory;
.super Ljava/lang/Object;
.source "ConverterFactory.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/convert/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/ConverterFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    .line 53
    return-void
.end method

.method private getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 141
    .local v0, factory:Ljava/lang/reflect/Constructor;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 144
    :cond_0
    return-object v0
.end method

.method private getConverter(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 104
    .local v0, factory:Ljava/lang/reflect/Constructor;
    if-nez v0, :cond_0

    .line 105
    new-instance v1, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v2, "No default constructor for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 107
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getConverter(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method

.method private getConverter(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    .line 123
    .local v0, converter:Lorg/simpleframework/xml/convert/Converter;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lorg/simpleframework/xml/convert/ConverterFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lorg/simpleframework/xml/convert/ConverterFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    .line 67
    .local v0, converter:Lorg/simpleframework/xml/convert/Converter;
    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getConverter(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 70
    .end local v0           #converter:Lorg/simpleframework/xml/convert/Converter;
    :cond_0
    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/convert/Convert;)Lorg/simpleframework/xml/convert/Converter;
    .locals 5
    .parameter "convert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1}, Lorg/simpleframework/xml/convert/Convert;->value()Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, type:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v2, "Can not instantiate %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 89
    :cond_0
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method
