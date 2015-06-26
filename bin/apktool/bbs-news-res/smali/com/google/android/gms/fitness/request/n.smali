.class public Lcom/google/android/gms/fitness/request/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final SF:Lcom/google/android/gms/fitness/data/DataType;

.field private final Sh:Lcom/google/android/gms/fitness/data/DataSource;

.field private final Ti:J

.field private final Tj:I

.field private Up:Lcom/google/android/gms/fitness/data/k;

.field Uq:I

.field Ur:I

.field private final Us:J

.field private final Ut:J

.field private final Uu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final Uv:J

.field private final Uw:Ljava/util/List;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/o;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Landroid/os/IBinder;",
            "IIJJ",
            "Landroid/app/PendingIntent;",
            "JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/n;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    if-nez p4, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/fitness/request/n;->Up:Lcom/google/android/gms/fitness/data/k;

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    int-to-long p7, p5

    :cond_0
    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/n;->Ti:J

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Ut:J

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-nez v2, :cond_1

    int-to-long p9, p6

    :cond_1
    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/n;->Us:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Uu:Ljava/util/List;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/n;->mPendingIntent:Landroid/app/PendingIntent;

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/fitness/request/n;->Tj:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/fitness/request/n;->Uw:Ljava/util/List;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Uv:J

    return-void

    :cond_2
    invoke-static {p4}, Lcom/google/android/gms/fitness/data/k$a;->an(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/k;

    move-result-object v2

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/n;->BR:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/n;->Up:Lcom/google/android/gms/fitness/data/k;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/n;->mPendingIntent:Landroid/app/PendingIntent;

    iput-wide p5, p0, Lcom/google/android/gms/fitness/request/n;->Ti:J

    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/n;->Ut:J

    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/n;->Us:J

    iput p11, p0, Lcom/google/android/gms/fitness/request/n;->Tj:I

    iput-object p12, p0, Lcom/google/android/gms/fitness/request/n;->Uu:Ljava/util/List;

    iput-object p13, p0, Lcom/google/android/gms/fitness/request/n;->Uw:Ljava/util/List;

    iput-wide p14, p0, Lcom/google/android/gms/fitness/request/n;->Uv:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRateMicros()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->jm()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->jn()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->iQ()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->jr()J

    move-result-wide v15

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/fitness/request/n;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/request/n;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Ti:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/n;->Ti:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Ut:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/n;->Ut:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Us:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/n;->Us:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/request/n;->Tj:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/n;->Tj:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Uu:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/n;->Uu:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/n;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/n;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/n;->a(Lcom/google/android/gms/fitness/request/n;)Z

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

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getSamplingRateMicros()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Ti:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/n;->BR:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/n;->Up:Lcom/google/android/gms/fitness/data/k;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/n;->Ti:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/n;->Ut:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/n;->Us:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/fitness/request/n;->Tj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/n;->Uu:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/n;->Tj:I

    return v0
.end method

.method public jl()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public jm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Ut:J

    return-wide v0
.end method

.method public jn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Us:J

    return-wide v0
.end method

.method public jo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Uu:Ljava/util/List;

    return-object v0
.end method

.method public jp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/n;->Uv:J

    return-wide v0
.end method

.method jq()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Up:Lcom/google/android/gms/fitness/data/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/n;->Up:Lcom/google/android/gms/fitness/data/k;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/k;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/n;->SF:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/n;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/n;->Ti:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/n;->Ut:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/n;->Us:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/o;->a(Lcom/google/android/gms/fitness/request/n;Landroid/os/Parcel;I)V

    return-void
.end method
