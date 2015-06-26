.class public final Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cc;


# instance fields
.field public final errorCode:I

.field public final fK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fO:J

.field public final gL:Ljava/lang/String;

.field public final hA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final hB:Ljava/lang/String;

.field public final hw:Ljava/lang/String;

.field public final hx:J

.field public final hy:Z

.field public final hz:J

.field public final orientation:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cb;->CREATOR:Lcom/google/android/gms/internal/cc;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 17

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p1

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/cb;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/cb;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cb;->gL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cb;->hw:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->fK:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/internal/cb;->errorCode:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->fL:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/internal/cb;->hx:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/cb;->hy:Z

    iput-wide p10, p0, Lcom/google/android/gms/internal/cb;->hz:J

    if-eqz p12, :cond_2

    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->hA:Ljava/util/List;

    iput-wide p13, p0, Lcom/google/android/gms/internal/cb;->fO:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/cb;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/cb;->hB:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v5, -0x2

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-wide/from16 v13, p11

    move/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/cb;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/internal/cb;Landroid/os/Parcel;I)V

    return-void
.end method
