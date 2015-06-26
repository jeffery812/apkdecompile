.class public abstract Lorg/springframework/web/client/HttpStatusCodeException;
.super Lorg/springframework/web/client/RestClientException;
.source "HttpStatusCodeException.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final responseBody:[B

.field private final responseCharset:Ljava/nio/charset/Charset;

.field private final statusCode:Lorg/springframework/http/HttpStatus;

.field private final statusText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/client/HttpStatusCodeException;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>(Lorg/springframework/http/HttpStatus;)V
    .locals 2
    .parameter "statusCode"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1}, Lorg/springframework/http/HttpStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/springframework/web/client/HttpStatusCodeException;-><init>(Lorg/springframework/http/HttpStatus;Ljava/lang/String;[BLjava/nio/charset/Charset;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lorg/springframework/http/HttpStatus;Ljava/lang/String;)V
    .locals 1
    .parameter "statusCode"
    .parameter "statusText"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/springframework/web/client/HttpStatusCodeException;-><init>(Lorg/springframework/http/HttpStatus;Ljava/lang/String;[BLjava/nio/charset/Charset;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lorg/springframework/http/HttpStatus;Ljava/lang/String;[BLjava/nio/charset/Charset;)V
    .locals 2
    .parameter "statusCode"
    .parameter "statusText"
    .parameter "responseBody"
    .parameter "responseCharset"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/springframework/http/HttpStatus;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/springframework/web/client/RestClientException;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/springframework/web/client/HttpStatusCodeException;->statusCode:Lorg/springframework/http/HttpStatus;

    .line 79
    iput-object p2, p0, Lorg/springframework/web/client/HttpStatusCodeException;->statusText:Ljava/lang/String;

    .line 80
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lorg/springframework/web/client/HttpStatusCodeException;->responseBody:[B

    .line 81
    if-eqz p4, :cond_1

    .end local p4
    :goto_1
    iput-object p4, p0, Lorg/springframework/web/client/HttpStatusCodeException;->responseCharset:Ljava/nio/charset/Charset;

    .line 82
    return-void

    .line 80
    .restart local p3
    .restart local p4
    :cond_0
    const/4 v0, 0x0

    new-array p3, v0, [B

    goto :goto_0

    .line 81
    .end local p3
    :cond_1
    sget-object p4, Lorg/springframework/web/client/HttpStatusCodeException;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_1
.end method


# virtual methods
.method public getResponseBodyAsByteArray()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/springframework/web/client/HttpStatusCodeException;->responseBody:[B

    return-object v0
.end method

.method public getResponseBodyAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/springframework/web/client/HttpStatusCodeException;->responseBody:[B

    iget-object v3, p0, Lorg/springframework/web/client/HttpStatusCodeException;->responseCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStatusCode()Lorg/springframework/http/HttpStatus;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/springframework/web/client/HttpStatusCodeException;->statusCode:Lorg/springframework/http/HttpStatus;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/springframework/web/client/HttpStatusCodeException;->statusText:Ljava/lang/String;

    return-object v0
.end method
