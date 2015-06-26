.class public Lcom/adobe/adms/measurement/ADMS_ContextData;
.super Ljava/lang/Object;
.source "ADMS_ContextData.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected contextData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/adms/measurement/ADMS_ContextData;",
            ">;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method protected containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected get(Ljava/lang/String;)Lcom/adobe/adms/measurement/ADMS_ContextData;
    .locals 1
    .parameter "key"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adms/measurement/ADMS_ContextData;

    return-object v0
.end method

.method protected put(Ljava/lang/String;Lcom/adobe/adms/measurement/ADMS_ContextData;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 15
    .local v0, addString:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 14
    .end local v0           #addString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
