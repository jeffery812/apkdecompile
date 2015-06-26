.class Lcom/google/android/gms/internal/bv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bv;->ai()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hk:Lcom/google/android/gms/internal/bv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bv$1;->hk:Lcom/google/android/gms/internal/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv$1;->hk:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bv;->onStop()V

    return-void
.end method
