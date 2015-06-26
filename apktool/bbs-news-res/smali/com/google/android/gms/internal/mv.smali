.class public Lcom/google/android/gms/internal/mv;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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

.field private final ahW:Lcom/google/android/gms/internal/mw;

.field private final ahX:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mv;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/md;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mv;->Dh:Lcom/google/android/gms/internal/md;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mv;->ahX:Ljava/util/Locale;

    new-instance v0, Lcom/google/android/gms/internal/mw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mv;->ahX:Ljava/util/Locale;

    invoke-direct {v0, p1, v1, p3}, Lcom/google/android/gms/internal/mw;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mv;->ahW:Lcom/google/android/gms/internal/mw;

    return-void
.end method
