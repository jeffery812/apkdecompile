.class public Lcom/google/android/gms/internal/fj;
.super Lcom/google/android/gms/drive/metadata/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/f",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final rN:Lcom/google/android/gms/internal/fj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fj;->rN:Lcom/google/android/gms/internal/fj;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-string v0, "driveId"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sqlId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "resourceId"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/metadata/internal/f;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fj;->g(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method protected g(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/DriveId;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dbInstanceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "resourceId"

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "generated-android-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v0, "sqlId"

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method
