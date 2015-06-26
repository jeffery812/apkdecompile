.class public final Lcom/google/a/a/e;
.super Lcom/google/a/a/d;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/e$a;
    }
.end annotation


# static fields
.field static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/String;

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    .line 36
    sput-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    .line 37
    sput-object v0, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    .line 38
    sput-object v0, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    .line 39
    sput-object v0, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    .line 42
    sput-object v0, Lcom/google/a/a/e;->i:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/a/a/e;->j:J

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/a/a/e;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/a/a/d;-><init>(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/a/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/google/a/a/e;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/google/a/a/e;

    invoke-direct {v0, p1}, Lcom/google/a/a/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static a()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 216
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 219
    :catch_1
    move-exception v0

    .line 220
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 303
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/a/a/h;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/h$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/b/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 308
    :catch_1
    move-exception v0

    .line 309
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 310
    :catch_2
    move-exception v0

    .line 311
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 250
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 253
    :catch_1
    move-exception v0

    .line 254
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    const-class v1, Lcom/google/a/a/e;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/google/a/a/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 95
    :try_start_1
    sput-object p0, Lcom/google/a/a/e;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 98
    :try_start_2
    const-string v2, "PiVF+7GzK6qkWIpmH3go6EW+4lv1AHMXPqUYcpA8Jgk="

    invoke-static {v2}, Lcom/google/b/a/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    new-instance v0, Lcom/google/a/a/h$a;

    invoke-direct {v0}, Lcom/google/a/a/h$a;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/b/a/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/a/a/h$a; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/google/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 108
    :catch_1
    move-exception v0

    .line 110
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 98
    :cond_1
    const/4 v3, 0x4

    const/16 v4, 0x10

    :try_start_4
    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_2

    aget-byte v2, v3, v0

    xor-int/lit8 v2, v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "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"

    invoke-static {v3, v0}, Lcom/google/a/a/h;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "dex"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/b/a/a; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/a/a/h$a; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/google/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/a/a/e$a; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_6
    const-string v4, "ads"

    const-string v5, ".jar"

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v5, "BtW5PZeLxighmDuoMSUeXkLIRLxUj47N/h+6hMKhxq4uW/pNaURvNv6NAvXNGBu3"

    invoke-static {v3, v5}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "A1NsX1sZeMOU9OiiP732RlBd4ah08giPkcFj25F547+C86S73YI73udKtZIw0B6X"

    invoke-static {v3, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "MLBkAVR8uzOmqT8ygVDVZVRSvzWCFXs1i+7cIH/ZEYOiENHaiM9lAgkf6370cqek"

    invoke-static {v3, v7}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "Uy6/KvzRj6tjiVYC+YUCyvVawnoBOmxJD5YQwY9JMoQNuY4LEOmpfr6IA1RyetsK"

    invoke-static {v3, v8}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "wtYFzsg2H0glAntKwuU5A41e9QruyMNxi77xJ9T868BjRmcAnrghKHz0wfm9FQne"

    invoke-static {v3, v9}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v9, "Gv+MhHMd+McrZ9XAP+glRpe5frBWJTxuuUMrkUfXpfA="

    invoke-static {v3, v9}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    const-string v5, "KX9YmwKB03DGqeXplYhlSFPFRu0EtMGso01yyiBxVNg="

    invoke-static {v3, v5}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    const-string v5, "ZFmakVgmSJd9pFKg1XrssC9EKMPxmiJqEFO4851brfQ="

    invoke-static {v3, v5}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v9

    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    const-string v5, "hOTY3z2FyAdpcBJdHzJQSYhyxdBFsyTqWFUmXDV6Tus="

    invoke-static {v3, v5}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v6, v7

    invoke-virtual {v8, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    const-string v5, "SMvPno8CccLs8l9Oz9z3o6AgspYE132lbNrhhlLP10U="

    invoke-static {v3, v5}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/b/a/a; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/a/a/h$a; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/google/a/a/e$a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_3

    .line 101
    :try_start_7
    invoke-static {}, Lcom/google/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/a/a/e;->j:J

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/a/a/e;->c:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/a/a/e$a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 98
    :catch_4
    move-exception v0

    :try_start_8
    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_8
    move-exception v0

    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/a/a/e$a; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_3
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v0, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 231
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :catch_1
    move-exception v0

    .line 240
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected final b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v1, Lcom/google/a/a/e;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    .line 137
    :goto_1
    const/16 v0, 0x19

    :try_start_2
    invoke-static {}, Lcom/google/a/a/e;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_2
    .catch Lcom/google/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    :goto_2
    const/16 v0, 0x18

    :try_start_3
    invoke-static {p1}, Lcom/google/a/a/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    :goto_3
    return-void

    .line 131
    :cond_0
    :try_start_4
    sget-object v1, Lcom/google/a/a/e;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_0
.end method
