.class public Lio/boxcar/push/util/a;
.super Ljava/lang/Object;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/util/a$1;,
        Lio/boxcar/push/util/a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:Lio/boxcar/push/util/RestResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/boxcar/push/util/a;-><init>(Ljava/lang/String;B)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 2
    .parameter "url"
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lio/boxcar/push/util/a;->f:Lio/boxcar/push/util/RestResponse;

    .line 67
    iput-object v0, p0, Lio/boxcar/push/util/a;->e:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    .line 69
    const/16 v0, 0x7530

    iput v0, p0, Lio/boxcar/push/util/a;->d:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/boxcar/push/util/a;->b:Ljava/util/ArrayList;

    .line 74
    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string v0, "org.apache.commons.logging.Log"

    const-string v1, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.showdatetime"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "is"

    .prologue
    .line 288
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 289
    .local v1, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v2, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v0           #line:Ljava/lang/String;
    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 300
    .restart local v0       #line:Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 301
    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0           #line:Ljava/lang/String;
    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v3

    .line 300
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 303
    :goto_2
    throw v3

    .line 301
    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 249
    .local v2, httpParams:Lorg/apache/http/params/HttpParams;
    iget v8, p0, Lio/boxcar/push/util/a;->d:I

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 250
    iget v8, p0, Lio/boxcar/push/util/a;->d:I

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 252
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 258
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 260
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 261
    .local v7, responseCode:I
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, message:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 265
    .local v1, entity:Lorg/apache/http/HttpEntity;
    const/4 v6, 0x0

    .line 266
    .local v6, response:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 269
    .local v4, instream:Ljava/io/InputStream;
    invoke-static {v4}, Lio/boxcar/push/util/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 275
    .end local v4           #instream:Ljava/io/InputStream;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HTTP response: \nCode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nMessage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    new-instance v8, Lio/boxcar/push/util/RestResponse;

    invoke-direct {v8, v7, v5, v6}, Lio/boxcar/push/util/RestResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lio/boxcar/push/util/a;->f:Lio/boxcar/push/util/RestResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 282
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 283
    return-void

    .line 281
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #response:Ljava/lang/String;
    .end local v7           #responseCode:I
    :catchall_0
    move-exception v8

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 282
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    throw v8
.end method


# virtual methods
.method public final a()Lio/boxcar/push/util/RestResponse;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lio/boxcar/push/util/a;->f:Lio/boxcar/push/util/RestResponse;

    return-object v0
.end method

.method public a(Lio/boxcar/push/util/a$a;)V
    .locals 13
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v10, Lio/boxcar/push/util/a$1;->a:[I

    invoke-virtual {p1}, Lio/boxcar/push/util/a$a;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 93
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v1, combinedParams:Ljava/lang/StringBuffer;
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 95
    const/16 v10, 0x3f

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/NameValuePair;

    .line 97
    .local v7, p:Lorg/apache/http/NameValuePair;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, paramString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 100
    const/16 v10, 0x26

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 107
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #p:Lorg/apache/http/NameValuePair;
    .end local v8           #paramString:Ljava/lang/String;
    :cond_1
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 110
    .local v9, request:Lorg/apache/http/client/methods/HttpGet;
    iget-object v10, p0, Lio/boxcar/push/util/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 111
    .local v3, h:Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .end local v3           #h:Lorg/apache/http/NameValuePair;
    :cond_2
    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {p0, v9}, Lio/boxcar/push/util/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto/16 :goto_0

    .line 118
    .end local v1           #combinedParams:Ljava/lang/StringBuffer;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #request:Lorg/apache/http/client/methods/HttpGet;
    :pswitch_1
    const/4 v2, 0x0

    .line 120
    .local v2, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {p0}, Lio/boxcar/push/util/a;->b()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/16 v10, 0x3f

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 124
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 126
    .local v6, nameValue:Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 132
    const/16 v10, 0x26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 135
    .end local v6           #nameValue:Lorg/apache/http/NameValuePair;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    .line 140
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lio/boxcar/push/util/a;->b()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 141
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v10, p0, Lio/boxcar/push/util/a;->e:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 144
    .restart local v2       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_6
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 145
    .local v9, request:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v2, :cond_7

    .line 146
    invoke-virtual {v9, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 150
    :cond_7
    iget-object v10, p0, Lio/boxcar/push/util/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 151
    .restart local v3       #h:Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 136
    .end local v3           #h:Lorg/apache/http/NameValuePair;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    :cond_8
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 137
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    const-string v11, "UTF-8"

    invoke-direct {v2, v10, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .restart local v2       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_4

    .line 154
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpPost;
    :cond_9
    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {p0, v9}, Lio/boxcar/push/util/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto/16 :goto_0

    .line 160
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    :pswitch_2
    const/4 v2, 0x0

    .line 162
    .restart local v2       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {p0}, Lio/boxcar/push/util/a;->b()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    const/16 v10, 0x3f

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 166
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 168
    .restart local v6       #nameValue:Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 174
    const/16 v10, 0x26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 177
    .end local v6           #nameValue:Lorg/apache/http/NameValuePair;
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    .line 182
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lio/boxcar/push/util/a;->b()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 183
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v10, p0, Lio/boxcar/push/util/a;->e:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 186
    .restart local v2       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_d
    new-instance v9, Lorg/apache/http/client/methods/HttpPut;

    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 187
    .local v9, request:Lorg/apache/http/client/methods/HttpPut;
    if-eqz v2, :cond_e

    .line 188
    invoke-virtual {v9, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 192
    :cond_e
    iget-object v10, p0, Lio/boxcar/push/util/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 193
    .restart local v3       #h:Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 178
    .end local v3           #h:Lorg/apache/http/NameValuePair;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPut;
    :cond_f
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 179
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    const-string v11, "UTF-8"

    invoke-direct {v2, v10, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .restart local v2       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_7

    .line 195
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpPut;
    :cond_10
    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    .line 196
    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {p0, v9}, Lio/boxcar/push/util/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto/16 :goto_0

    .line 201
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPut;
    :pswitch_3
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13

    .line 202
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    const/16 v10, 0x3f

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    iget-object v10, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 205
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_11
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 206
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 207
    .restart local v6       #nameValue:Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 213
    const/16 v10, 0x26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 216
    .end local v6           #nameValue:Lorg/apache/http/NameValuePair;
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    .line 219
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_13
    new-instance v9, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 222
    .local v9, request:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v10, p0, Lio/boxcar/push/util/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 223
    .restart local v3       #h:Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 226
    .end local v3           #h:Lorg/apache/http/NameValuePair;
    :cond_14
    iget-object v10, p0, Lio/boxcar/push/util/a;->c:Ljava/lang/String;

    invoke-direct {p0, v9}, Lio/boxcar/push/util/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 86
    iput-object p1, p0, Lio/boxcar/push/util/a;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 78
    iget-object v0, p0, Lio/boxcar/push/util/a;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 82
    iget-object v0, p0, Lio/boxcar/push/util/a;->b:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lio/boxcar/push/util/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/boxcar/push/util/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
