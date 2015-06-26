.class public final Lcom/google/android/gms/drive/internal/v;
.super Ljava/lang/Object;


# static fields
.field private static final OS:Lcom/google/android/gms/common/internal/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/h;

    const-string v1, "GmsDrive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/internal/v;->OS:Lcom/google/android/gms/common/internal/h;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/v;->OS:Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/drive/internal/v;->OS:Lcom/google/android/gms/common/internal/h;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/common/internal/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/v;->OS:Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/h;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/v;->OS:Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/h;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/v;->OS:Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
