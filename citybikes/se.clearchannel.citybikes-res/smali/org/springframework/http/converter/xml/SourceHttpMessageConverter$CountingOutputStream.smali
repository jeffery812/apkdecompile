.class Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private count:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    return-wide v0
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    .line 122
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    .line 127
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J

    .line 132
    return-void
.end method
