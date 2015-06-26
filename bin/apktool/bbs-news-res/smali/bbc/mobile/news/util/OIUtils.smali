.class public Lbbc/mobile/news/util/OIUtils;
.super Ljava/lang/Object;
.source "OIUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1}, Lbbc/mobile/news/util/OIUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 34
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 35
    const/4 v2, -0x1

    .line 38
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0, p1}, Lbbc/mobile/news/util/OIUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 88
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 89
    const/4 v2, -0x1

    .line 92
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 57
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lbbc/mobile/news/util/OIUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 59
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 60
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-static {p0, p1}, Lbbc/mobile/news/util/OIUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lbbc/mobile/news/util/OIUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 44
    .local v0, buffer:[B
    const-wide/16 v2, 0x0

    .line 45
    .local v2, count:J
    const/4 v1, 0x0

    .line 46
    .local v1, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 51
    return-wide v2

    .line 47
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 75
    .local v0, buffer:[C
    const-wide/16 v2, 0x0

    .line 76
    .local v2, count:J
    const/4 v1, 0x0

    .line 77
    .local v1, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 82
    return-wide v2

    .line 78
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    .line 79
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0
.end method
