.class public Lcom/google/android/gms/fitness/data/Bucket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Bucket;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_SEGMENT:I = 0x4

.field public static final TYPE_ACTIVITY_TYPE:I = 0x3

.field public static final TYPE_SESSION:I = 0x2

.field public static final TYPE_TIME:I = 0x1


# instance fields
.field private final BR:I

.field private final KL:J

.field private final Si:J

.field private final Sk:Lcom/google/android/gms/fitness/data/Session;

.field private final Sv:I

.field private final Sw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final Sx:I

.field private Sy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Bucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .locals 2
    .parameter "versionCode"
    .parameter "startTimeMillis"
    .parameter "endTimeMillis"
    .parameter "session"
    .parameter "activity"
    .parameter
    .parameter "bucketType"
    .parameter "serverHasMoreData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lcom/google/android/gms/fitness/data/Session;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p8, dataSets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sy:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->BR:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sk:Lcom/google/android/gms/fitness/data/Session;

    iput p7, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sy:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawBucket;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter "bucket"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/RawBucket;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, uniqueDataSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataSource;>;"
    .local p3, uniqueDataTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataType;>;"
    const/4 v1, 0x2

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;->KL:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Si:J

    iget-object v6, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Sk:Lcom/google/android/gms/fitness/data/Session;

    iget v7, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Sv:I

    iget-object v0, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Sw:Ljava/util/List;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/fitness/data/Bucket;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget v9, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Sx:I

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Sy:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataSet;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {v3, v0, p1, p2}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Lcom/google/android/gms/fitness/data/Bucket;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sy:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Sy:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cz(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "bug"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "time"

    goto :goto_0

    :pswitch_1
    const-string v0, "type"

    goto :goto_0

    :pswitch_2
    const-string v0, "segment"

    goto :goto_0

    :pswitch_3
    const-string v0, "session"

    goto :goto_0

    :pswitch_4
    const-string v0, "unknown"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public b(Lcom/google/android/gms/fitness/data/Bucket;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

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

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Bucket;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Bucket;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/Bucket;)Z

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

.method public getActivity()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    return v0
.end method

.method public getBucketType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    return v0
.end method

.method public getDataSet(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 3
    .parameter "dataType"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    return-wide v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sk:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public getStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->BR:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iB()Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sy:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->iB()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->KL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Si:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sw:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sx:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Bucket;->cz(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Sy:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/d;->a(Lcom/google/android/gms/fitness/data/Bucket;Landroid/os/Parcel;I)V

    return-void
.end method
