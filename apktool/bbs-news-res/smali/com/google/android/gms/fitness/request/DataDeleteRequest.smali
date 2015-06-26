.class public Lcom/google/android/gms/fitness/request/DataDeleteRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataDeleteRequest$1;,
        Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataDeleteRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final KL:J

.field private final Si:J

.field private final Su:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final TZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final Ua:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final Ub:Z

.field private final Uc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 2
    .parameter "versionCode"
    .parameter "startTimeMillis"
    .parameter "endTimeMillis"
    .parameter
    .parameter
    .parameter
    .parameter "deleteAllData"
    .parameter "deleteAllSessions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p6, dataSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataSource;>;"
    .local p7, dataTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataType;>;"
    .local p8, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/Session;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->BR:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->TZ:Ljava/util/List;

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Su:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ua:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ub:Z

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Uc:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->BR:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->a(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->b(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->c(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->TZ:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->d(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Su:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->e(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ua:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->f(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ub:Z

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->g(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Uc:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;Lcom/google/android/gms/fitness/request/DataDeleteRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->TZ:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->TZ:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Su:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Su:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ua:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ua:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ub:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ub:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Uc:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Uc:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->TZ:Ljava/util/List;

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Su:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    return-wide v0
.end method

.method public getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ua:Ljava/util/List;

    return-object v0
.end method

.method public getStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->BR:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ub:Z

    return v0
.end method

.method public iY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Uc:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "startTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->KL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "endTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Si:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->TZ:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "dateTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Su:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "sessions"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ua:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "deleteAllData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Ub:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "deleteAllSessions"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->Uc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/d;->a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Landroid/os/Parcel;I)V

    return-void
.end method
