.class public Lcom/google/android/gms/internal/lo;
.super Ljava/lang/Object;


# instance fields
.field private final Dd:Ljava/lang/String;

.field private final Dh:Lcom/google/android/gms/internal/md;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;"
        }
    .end annotation
.end field

.field private final IH:Ljava/lang/String;

.field private aep:Lcom/google/android/gms/internal/lp;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/md;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/lo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/lo;->Dd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/lo;->Dh:Lcom/google/android/gms/internal/md;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aep:Lcom/google/android/gms/internal/lp;

    iput-object p3, p0, Lcom/google/android/gms/internal/lo;->IH:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/md;)Lcom/google/android/gms/internal/lo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;)",
            "Lcom/google/android/gms/internal/lo;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/lo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/md;)V

    return-object v0
.end method
