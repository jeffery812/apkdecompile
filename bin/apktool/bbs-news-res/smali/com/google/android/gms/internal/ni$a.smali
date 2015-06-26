.class public Lcom/google/android/gms/internal/ni$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final akB:Lcom/google/android/gms/internal/nl;

.field public final akC:Lcom/google/android/gms/internal/nh;

.field public final akD:Lcom/google/android/gms/internal/pq$c;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/nl;Lcom/google/android/gms/internal/nh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$a;->akB:Lcom/google/android/gms/internal/nl;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$a;->akC:Lcom/google/android/gms/internal/nh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$a;->akD:Lcom/google/android/gms/internal/pq$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nl;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/ni$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ni$a;-><init>(Lcom/google/android/gms/internal/nl;Lcom/google/android/gms/internal/nh;)V

    return-void
.end method
