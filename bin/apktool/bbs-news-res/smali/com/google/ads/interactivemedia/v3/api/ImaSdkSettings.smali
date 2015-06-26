.class public Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private transient language:Ljava/lang/String;

.field private ppid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->ppid:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPpid(Ljava/lang/String;)V
    .locals 0
    .parameter "ppid"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->ppid:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImaSdkSettings [ppid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->ppid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
