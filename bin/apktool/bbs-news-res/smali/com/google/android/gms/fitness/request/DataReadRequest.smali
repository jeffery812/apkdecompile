.class public Lcom/google/android/gms/fitness/request/DataReadRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataReadRequest$1;,
        Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataReadRequest;",
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

.field private final Sx:I

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

.field private final Ud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final Ue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final Uf:J

.field private final Ug:Lcom/google/android/gms/fitness/data/DataSource;

.field private final Uh:I

.field private final Ui:Z

.field private final Uj:Z

.field private final Uk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZZ)V
    .locals 2
    .parameter "versionCode"
    .parameter
    .parameter
    .parameter "startTimeMillis"
    .parameter "endTimeMillis"
    .parameter
    .parameter
    .parameter "bucketType"
    .parameter "bucketDurationMillis"
    .parameter "activityDataSource"
    .parameter "limit"
    .parameter "disableTransformations"
    .parameter "flushBeforeRead"
    .parameter "serverQueriesEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;IJ",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "IZZZ)V"
        }
    .end annotation

    .prologue
    .local p2, dataTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataType;>;"
    .local p3, dataSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataSource;>;"
    .local p8, aggregatedDataTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataType;>;"
    .local p9, aggregatedDataSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->BR:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    iput p10, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    iput-wide p11, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    iput-object p13, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uh:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ui:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uj:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uk:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->BR:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->a(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->b(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->c(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->d(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->e(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->f(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->g(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->h(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->i(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->j(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uh:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->k(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ui:Z

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->l(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uj:Z

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->m(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uk:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;Lcom/google/android/gms/fitness/request/DataReadRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/request/DataReadRequest;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uk:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uk:Z

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
    .parameter "that"

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;)Z

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

.method public getBucketType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    return v0
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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    return-wide v0
.end method

.method public getStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->BR:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ja()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    return-object v0
.end method

.method public jb()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    return-object v0
.end method

.method public jc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    return-wide v0
.end method

.method public jd()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public je()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uh:I

    return v0
.end method

.method public jf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ui:Z

    return v0
.end method

.method public jg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uk:Z

    return v0
.end method

.method public jh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uj:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReadDataRequest{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Su:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->iL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->TZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    if-eqz v0, :cond_3

    const-string v0, "bucket by "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Sx:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Bucket;->cz(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-string v0, " >"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uf:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->iL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v0, "(%tF %tT - %tF %tT)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->KL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Si:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_6

    const-string v0, "activities: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ug:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Uk:Z

    if-eqz v0, :cond_7

    const-string v0, " +server"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/f;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;Landroid/os/Parcel;I)V

    return-void
.end method
