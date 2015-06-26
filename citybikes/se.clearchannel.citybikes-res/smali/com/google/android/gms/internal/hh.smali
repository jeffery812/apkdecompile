.class public Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;


# static fields
.field private static Bj:I

.field private static Bk:I


# instance fields
.field private final Be:I

.field private final Bl:Ljava/lang/String;

.field private final Bm:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/hd$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/google/android/gms/internal/hh;->Bj:I

    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/gms/internal/hh;->Bk:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/hd$a$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->Bl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hd$a$a;->as(Ljava/lang/String;)Lcom/google/android/gms/internal/hd$a$a;

    iget v0, p0, Lcom/google/android/gms/internal/hh;->Be:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hd$a$a;->bd(I)Lcom/google/android/gms/internal/hd$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->Bm:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hd$a$a;->ek()Lcom/google/android/gms/internal/hd$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
