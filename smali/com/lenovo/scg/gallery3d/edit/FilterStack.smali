.class public Lcom/lenovo/scg/gallery3d/edit/FilterStack;
.super Ljava/lang/Object;
.source "FilterStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;
    }
.end annotation


# static fields
.field private static final MAX_COMMAND_VALUE:I = 0x1e

.field private static final MAX_UNDO_VALUE:I = 0x14


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/edit/Command;",
            ">;"
        }
    .end annotation
.end field

.field private currentCommandId:I

.field private doPhotosPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFirstPhotoPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mIsCanGetBitmap:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->mIsCanGetBitmap:Z

    .line 150
    return-void
.end method


# virtual methods
.method public addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "command"    # Lcom/lenovo/scg/gallery3d/edit/Command;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    .line 47
    const-string v7, "jiaxiaowei"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCommand  commands.size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",command:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",currentCommandId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    return-void

    .line 49
    :cond_1
    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_2

    .line 50
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    sub-int v1, v7, v8

    .line 51
    .local v1, "deleteSize":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    .local v0, "commandsSize":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 53
    .local v2, "doPhotoPathListSize":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 54
    .local v5, "imageCacheSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_2

    .line 55
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    sub-int v8, v0, v4

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 56
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    sub-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    sub-int v8, v5, v4

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "commandsSize":I
    .end local v1    # "deleteSize":I
    .end local v2    # "doPhotoPathListSize":I
    .end local v4    # "i":I
    .end local v5    # "imageCacheSize":I
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x14

    if-lt v7, v8, :cond_3

    .line 61
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    :cond_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v7, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "filename":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    .line 71
    new-instance v6, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;

    invoke-direct {v6, p0, p2, v3}, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;-><init>(Lcom/lenovo/scg/gallery3d/edit/FilterStack;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 72
    .local v6, "saveBitmapThread":Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 73
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_0

    .line 75
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    const/16 v7, 0xa

    if-ge v4, v7, :cond_0

    .line 76
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public deleteTempFile()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->deleteTempFile()V

    .line 134
    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bigBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0xa

    .line 139
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 140
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/edit/Command;

    .line 141
    .local v0, "command":Lcom/lenovo/scg/gallery3d/edit/Command;
    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/edit/Command;->execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_0
    move-object p1, v2

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "command":Lcom/lenovo/scg/gallery3d/edit/Command;
    :cond_1
    return-object v2
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 96
    const-string v2, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getCurrentBitmap currentCommandId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",imageCache.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",doPhotosPathList.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    if-ltz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 100
    .local v1, "bitmapCache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 103
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->mIsCanGetBitmap:Z

    if-eqz v2, :cond_1

    .line 104
    iget v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 105
    new-instance v3, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->mIsCanGetBitmap:Z

    goto :goto_0

    .line 109
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->mIsCanGetBitmap:Z

    .line 113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapCache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->mFirstPhotoPath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object v0
.end method

.method public isRedoCanClicked()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUndoCanClicked()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    if-lez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    .line 44
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->imageCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->doPhotosPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    return-void
.end method

.method public setPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->mFirstPhotoPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 118
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->currentCommandId:I

    .line 40
    return-void
.end method
