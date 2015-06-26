.class public Lbbc/mobile/news/helper/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final closeInputStream(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 p0, 0x0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    const-string v1, "StreamUtils"

    const-string v2, "closeInputStream(): failed closure."

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final closeOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 p0, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/IOException;
    const-string v1, "StreamUtils"

    const-string v2, "closeOutputStream(): failed closure."

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "is"
    .parameter "encoding"

    .prologue
    const/4 v4, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-object v4

    .line 27
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v3, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 36
    const-string v5, "StreamUtils"

    const-string v6, "convertStreamToString(): length= %d "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lbbc/mobile/news/helper/BBCLog;->ii(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 43
    invoke-static {p0}, Lbbc/mobile/news/helper/StreamUtils;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 32
    :cond_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 38
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "StreamUtils"

    const-string v6, "convertStreamToString(): failed conversion."

    invoke-static {v5, v6, v0}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    invoke-static {p0}, Lbbc/mobile/news/helper/StreamUtils;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 43
    invoke-static {p0}, Lbbc/mobile/news/helper/StreamUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 44
    throw v4
.end method
