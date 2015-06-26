.class public Lcom/adobe/adms/testandtarget/MissingOnLoadConsumerException;
.super Ljava/lang/Exception;
.source "MissingOnLoadConsumerException.java"


# static fields
.field private static final defaultMessage:Ljava/lang/String; = "Mbox.addOnloadConsumer() must be called before loading Mbox."

.field private static final serialVersionUID:J = 0x2fe0061e145ff9a5L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Mbox.addOnloadConsumer() must be called before loading Mbox."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
