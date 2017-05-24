.class public final Lledroid/nac/utils/DebugConfig;
.super Ljava/lang/Object;
.source "DebugConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ledroid-nac"

.field public static final TEST_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "ledroid-nac"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lledroid/nac/utils/DebugConfig;->TEST_FILE:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lledroid/nac/utils/DebugConfig;->TEST_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
