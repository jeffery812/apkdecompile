.class public Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private KL:J

.field private Si:J

.field private Su:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private TZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private UC:Ljava/lang/String;

.field private UD:Z

.field private UE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Uk:Z

.field private vL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->KL:J

    iput-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Si:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Su:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TZ:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UD:Z

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Uk:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UE:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->vL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->KL:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Si:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Su:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TZ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UD:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Uk:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UE:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SessionReadRequest;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->KL:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Invalid start time: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->KL:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Si:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Si:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->KL:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Invalid end time: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Si:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;Lcom/google/android/gms/fitness/request/SessionReadRequest$1;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Uk:Z

    return-object p0
.end method

.method public excludePackage(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1
    .parameter "appPackageName"

    .prologue
    const-string v0, "Attempting to use a null package name"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1
    .parameter "dataSource"

    .prologue
    const-string v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1
    .parameter "dataType"

    .prologue
    const-string v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Su:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Su:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public readSessionsFromAllApps()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UD:Z

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0
    .parameter "sessionId"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->vL:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0
    .parameter "sessionName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->UC:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJ)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1
    .parameter "startTimeMillis"
    .parameter "endTimeMillis"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->KL:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Si:J

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 5
    .parameter "startTime"
    .parameter "endTime"
    .parameter "timeUnit"

    .prologue
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->setTimeInterval(JJ)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;

    move-result-object v0

    return-object v0
.end method
