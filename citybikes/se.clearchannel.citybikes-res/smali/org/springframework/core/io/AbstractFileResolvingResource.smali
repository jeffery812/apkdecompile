.class public abstract Lorg/springframework/core/io/AbstractFileResolvingResource;
.super Lorg/springframework/core/io/AbstractResource;
.source "AbstractFileResolvingResource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractResource;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 136
    .local v1, url:Ljava/net/URL;
    invoke-static {v1}, Lorg/springframework/util/ResourceUtils;->isFileURL(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-super {p0}, Lorg/springframework/core/io/AbstractResource;->contentLength()J

    move-result-wide v2

    .line 146
    :goto_0
    return-wide v2

    .line 141
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 142
    .local v0, con:Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 143
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 144
    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public exists()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getURL()Ljava/net/URL;

    move-result-object v6

    .line 81
    .local v6, url:Ljava/net/URL;
    invoke-static {v6}, Lorg/springframework/util/ResourceUtils;->isFileURL(Ljava/net/URL;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    .line 113
    .end local v6           #url:Ljava/net/URL;
    :goto_0
    return v7

    .line 86
    .restart local v6       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 87
    .local v2, con:Ljava/net/URLConnection;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 88
    instance-of v7, v2, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    move-object v4, v7

    .line 89
    .local v4, httpCon:Ljava/net/HttpURLConnection;
    :goto_1
    if-eqz v4, :cond_3

    .line 90
    const-string v7, "HEAD"

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 92
    .local v1, code:I
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_2

    move v7, v8

    .line 93
    goto :goto_0

    .line 88
    .end local v1           #code:I
    .end local v4           #httpCon:Ljava/net/HttpURLConnection;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 94
    .restart local v1       #code:I
    .restart local v4       #httpCon:Ljava/net/HttpURLConnection;
    :cond_2
    const/16 v7, 0x194

    if-ne v1, v7, :cond_3

    move v7, v9

    .line 95
    goto :goto_0

    .line 98
    .end local v1           #code:I
    :cond_3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    if-ltz v7, :cond_4

    move v7, v8

    .line 99
    goto :goto_0

    .line 101
    :cond_4
    if-eqz v4, :cond_5

    .line 103
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v7, v9

    .line 104
    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 108
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 109
    goto :goto_0

    .line 112
    .end local v2           #con:Ljava/net/URLConnection;
    .end local v4           #httpCon:Ljava/net/HttpURLConnection;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/io/IOException;
    move v7, v9

    .line 113
    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 50
    .local v0, url:Ljava/net/URL;
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/springframework/util/ResourceUtils;->getFile(Ljava/net/URL;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method protected getFile(Ljava/net/URI;)Ljava/io/File;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/springframework/util/ResourceUtils;->getFile(Ljava/net/URI;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getFileForLastModifiedCheck()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 59
    .local v1, url:Ljava/net/URL;
    invoke-static {v1}, Lorg/springframework/util/ResourceUtils;->isJarURL(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {v1}, Lorg/springframework/util/ResourceUtils;->extractJarFileURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    .line 61
    .local v0, actualUrl:Ljava/net/URL;
    const-string v2, "Jar URL"

    invoke-static {v0, v2}, Lorg/springframework/util/ResourceUtils;->getFile(Ljava/net/URL;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 63
    .end local v0           #actualUrl:Ljava/net/URL;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getFile()Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 121
    .local v2, url:Ljava/net/URL;
    invoke-static {v2}, Lorg/springframework/util/ResourceUtils;->isFileURL(Ljava/net/URL;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 129
    .end local v1           #file:Ljava/io/File;
    .end local v2           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return v3

    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #url:Ljava/net/URL;
    :cond_1
    move v3, v4

    .line 124
    goto :goto_0

    .line 128
    .end local v1           #file:Ljava/io/File;
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    move v3, v4

    .line 129
    goto :goto_0
.end method

.method public lastModified()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 153
    .local v1, url:Ljava/net/URL;
    invoke-static {v1}, Lorg/springframework/util/ResourceUtils;->isFileURL(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lorg/springframework/util/ResourceUtils;->isJarURL(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    invoke-super {p0}, Lorg/springframework/core/io/AbstractResource;->lastModified()J

    move-result-wide v2

    .line 163
    :goto_0
    return-wide v2

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 159
    .local v0, con:Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 160
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 161
    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 163
    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v2

    goto :goto_0
.end method
