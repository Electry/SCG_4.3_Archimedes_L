.class Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;J)V
    .locals 0
    .param p2, "version"    # J

    .prologue
    .line 277
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 279
    return-void
.end method


# virtual methods
.method public call()Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 283
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    move-object v2, v5

    .line 300
    :cond_0
    :goto_0
    return-object v2

    .line 287
    :cond_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;

    invoke-direct {v2, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;)V

    .line 288
    .local v2, "info":Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 289
    .local v6, "version":J
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$600(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 290
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v8

    iput v8, v2, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 291
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$800(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v4

    .line 292
    .local v4, "setVersion":[J
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$900(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v0

    .local v0, "i":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 293
    rem-int/lit16 v1, v0, 0x3e8

    .line 294
    .local v1, "index":I
    aget-wide v8, v4, v1

    cmp-long v8, v8, v6

    if-eqz v8, :cond_2

    .line 295
    iput v0, v2, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    .line 296
    const/16 v5, 0x40

    sub-int v8, v3, v0

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    goto :goto_0

    .line 292
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    .end local v1    # "index":I
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$600(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    move-object v2, v5

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->call()Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
