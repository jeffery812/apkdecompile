.class Lcom/google/android/gms/internal/cx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cx;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jb:Lcom/google/android/gms/internal/bk;

.field final synthetic jc:Lcom/google/android/gms/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$1;->jc:Lcom/google/android/gms/internal/cx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx$1;->jb:Lcom/google/android/gms/internal/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->jb:Lcom/google/android/gms/internal/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->Y()V

    return-void
.end method
