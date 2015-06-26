.class public Lse/clearchannel/citybikes/api/security/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# instance fields
.field private final operatorId:Ljava/lang/String;

.field private final operatorSecret:Ljava/lang/String;

.field private final uniqueRequestString:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v1, "28ndjn3198b"

    iput-object v1, p0, Lse/clearchannel/citybikes/api/security/Authentication;->operatorId:Ljava/lang/String;

    .line 13
    const-string v1, "Nsiw8)k2!#,kd#2s"

    iput-object v1, p0, Lse/clearchannel/citybikes/api/security/Authentication;->operatorSecret:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 23
    .local v0, randomId:Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lse/clearchannel/citybikes/api/security/Authentication;->uniqueRequestString:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getNewToken()Lse/clearchannel/citybikes/api/security/Authentication;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lse/clearchannel/citybikes/api/security/Authentication;

    invoke-direct {v0}, Lse/clearchannel/citybikes/api/security/Authentication;-><init>()V

    return-object v0
.end method

.method private getOperatorSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Nsiw8)k2!#,kd#2s"

    return-object v0
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 7

    .prologue
    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, md:Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 45
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lse/clearchannel/citybikes/api/security/Authentication;->getOperatorId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p0}, Lse/clearchannel/citybikes/api/security/Authentication;->getOperatorSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lse/clearchannel/citybikes/api/security/Authentication;->getUniqueRequestString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, text:Ljava/lang/String;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :goto_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 58
    .local v2, digest:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 59
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, output:Ljava/lang/String;
    return-object v4

    .line 53
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v2           #digest:[B
    .end local v4           #output:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 42
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v5           #text:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public getOperatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "28ndjn3198b"

    return-object v0
.end method

.method public getUniqueRequestString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lse/clearchannel/citybikes/api/security/Authentication;->uniqueRequestString:Ljava/lang/String;

    return-object v0
.end method
