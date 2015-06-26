.class public Lorg/springframework/util/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static final froyoOrNewer:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/springframework/util/Base64Utils;->froyoOrNewer:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .parameter "str"

    .prologue
    .line 95
    sget-object v1, Lorg/springframework/util/Base64Utils;->froyoOrNewer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/springframework/util/support/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode([B)[B
    .locals 3
    .parameter "input"

    .prologue
    .line 75
    sget-object v1, Lorg/springframework/util/Base64Utils;->froyoOrNewer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/springframework/util/support/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode([B)[B
    .locals 1
    .parameter "input"

    .prologue
    .line 43
    sget-object v0, Lorg/springframework/util/Base64Utils;->froyoOrNewer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/springframework/util/support/Base64;->encodeBytesToBytes([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 59
    sget-object v0, Lorg/springframework/util/Base64Utils;->froyoOrNewer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/springframework/util/support/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
