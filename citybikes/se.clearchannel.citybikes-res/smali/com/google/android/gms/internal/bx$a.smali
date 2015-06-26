.class public final Lcom/google/android/gms/internal/bx$a;
.super Lcom/google/android/gms/internal/bx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/bx;-><init>(Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bx$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public ak()V
    .locals 0

    return-void
.end method

.method public al()Lcom/google/android/gms/internal/cd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx$a;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ar;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ar;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ce;->a(Landroid/content/Context;Lcom/google/android/gms/internal/aq;)Lcom/google/android/gms/internal/ce;

    move-result-object v0

    return-object v0
.end method
