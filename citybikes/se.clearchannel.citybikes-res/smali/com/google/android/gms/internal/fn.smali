.class public final Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;


# static fields
.field private static final uH:Lcom/google/android/gms/internal/ea;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ea;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ea;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fn;->uH:Lcom/google/android/gms/internal/ea;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fn;->uH:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fn;->uH:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ea;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fn;->uH:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
