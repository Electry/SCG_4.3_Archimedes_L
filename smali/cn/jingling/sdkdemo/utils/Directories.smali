.class public Lcn/jingling/sdkdemo/utils/Directories;
.super Ljava/lang/Object;
.source "Directories.java"


# static fields
.field private static final ROOT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/motusdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jingling/sdkdemo/utils/Directories;->ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcn/jingling/sdkdemo/utils/Directories;->ROOT:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/jingling/sdkdemo/utils/Directories;->ROOT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    return-void
.end method
