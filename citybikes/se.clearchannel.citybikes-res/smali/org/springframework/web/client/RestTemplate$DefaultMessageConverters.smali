.class Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;
.super Ljava/lang/Object;
.source "RestTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/client/RestTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultMessageConverters"
.end annotation


# static fields
.field private static final jackson2Present:Z

.field private static final jacksonPresent:Z

.field private static final javaxXmlTransformPresent:Z

.field private static final romePresent:Z

.field private static final simpleXmlPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    const-string v0, "javax.xml.transform.Source"

    const-class v3, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->javaxXmlTransformPresent:Z

    .line 669
    const-string v0, "org.simpleframework.xml.Serializer"

    const-class v3, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->simpleXmlPresent:Z

    .line 672
    const-string v0, "org.codehaus.jackson.map.ObjectMapper"

    const-class v3, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.codehaus.jackson.JsonGenerator"

    const-class v3, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->jacksonPresent:Z

    .line 676
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    const-class v3, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.fasterxml.jackson.core.JsonGenerator"

    const-class v3, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->jackson2Present:Z

    .line 680
    const-string v0, "com.google.code.rome.android.repackaged.com.sun.syndication.feed.synd.SyndFeed"

    const-class v1, Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/springframework/util/ClassUtils;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->romePresent:Z

    return-void

    :cond_0
    move v0, v2

    .line 672
    goto :goto_0

    :cond_1
    move v1, v2

    .line 676
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, messageConverters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    new-instance v0, Lorg/springframework/http/converter/ByteArrayHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/ByteArrayHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v0, Lorg/springframework/http/converter/StringHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/StringHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v0, Lorg/springframework/http/converter/ResourceHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/ResourceHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    sget-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->javaxXmlTransformPresent:Z

    if-eqz v0, :cond_3

    .line 690
    new-instance v0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v0, Lorg/springframework/http/converter/xml/XmlAwareFormHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/xml/XmlAwareFormHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :goto_0
    sget-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->simpleXmlPresent:Z

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_0
    sget-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->jackson2Present:Z

    if-eqz v0, :cond_4

    .line 701
    new-instance v0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_1
    :goto_1
    sget-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->romePresent:Z

    if-eqz v0, :cond_2

    .line 707
    new-instance v0, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_2
    return-void

    .line 693
    :cond_3
    new-instance v0, Lorg/springframework/http/converter/FormHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/FormHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 702
    :cond_4
    sget-boolean v0, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->jacksonPresent:Z

    if-eqz v0, :cond_1

    .line 703
    new-instance v0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
