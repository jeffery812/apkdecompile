.class public Lorg/springframework/http/converter/xml/XmlAwareFormHttpMessageConverter;
.super Lorg/springframework/http/converter/FormHttpMessageConverter;
.source "XmlAwareFormHttpMessageConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/springframework/http/converter/FormHttpMessageConverter;-><init>()V

    .line 32
    new-instance v0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/springframework/http/converter/xml/XmlAwareFormHttpMessageConverter;->addPartConverter(Lorg/springframework/http/converter/HttpMessageConverter;)V

    .line 33
    return-void
.end method
