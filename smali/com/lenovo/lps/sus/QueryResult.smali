.class public Lcom/lenovo/lps/sus/QueryResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public appKey:Ljava/lang/String;

.field public bPatchUpdateEnableFlag:Z

.field public channelKey:Ljava/lang/String;

.field public custKey:Ljava/lang/String;

.field public downloadPKGRealSize:J

.field public forceUpdate:Ljava/lang/String;

.field public newFullPKGDownloadURL:Ljava/lang/String;

.field public newFullPKGFileName:Ljava/lang/String;

.field public newFullPKGID:Ljava/lang/String;

.field public newFullPKGMD5:Ljava/lang/String;

.field public newFullPKGSignalFileMD5:Ljava/lang/String;

.field public newFullPKGSize:J

.field public newVerCode:Ljava/lang/String;

.field public newVerName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public releaseDate:Ljava/util/Date;

.field public resultType:Ljava/lang/String;

.field public updatedUserRate:F

.field public verDescribe:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LATESTVERSION"

    iput-object v0, p0, Lcom/lenovo/lps/sus/QueryResult;->resultType:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->appKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->channelKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newVerCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newVerName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->verDescribe:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->forceUpdate:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->custKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/QueryResult;->bPatchUpdateEnableFlag:Z

    iput-wide v2, p0, Lcom/lenovo/lps/sus/QueryResult;->downloadPKGRealSize:J

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGSignalFileMD5:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGMD5:Ljava/lang/String;

    iput-wide v2, p0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGSize:J

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGID:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGDownloadURL:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/QueryResult;->updatedUserRate:F

    iput-object v1, p0, Lcom/lenovo/lps/sus/QueryResult;->releaseDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/QueryResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
