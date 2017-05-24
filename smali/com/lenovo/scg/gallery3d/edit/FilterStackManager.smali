.class public Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;
.super Ljava/lang/Object;
.source "FilterStackManager.java"


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mCurrentFilterStackIndex:I

.field private mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 2
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 19
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setFilterStack(Lcom/lenovo/scg/gallery3d/edit/FilterStack;)V

    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getFilterStackIndex()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mCurrentFilterStackIndex:I

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mCurrentFilterStackIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->resetScaleBitmap(I)V

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->reset()V

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mCurrentFilterStackIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->deleteFilterStack(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mCurrentFilterStackIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFilterStackIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mCurrentFilterStackIndex:I

    return v0
.end method

.method public getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public isRedoCanClicked()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->isRedoCanClicked()Z

    move-result v0

    return v0
.end method

.method public isUndoCanClicked()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->isUndoCanClicked()Z

    move-result v0

    return v0
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->redo()V

    .line 63
    :cond_0
    return-void
.end method

.method public resetFilterStack()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->reset()V

    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mCurrentFilterStackIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->resetScaleBitmap(I)V

    .line 27
    return-void
.end method

.method public setFirstPhotoPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->setPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 71
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->mFilterStack:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->undo()V

    .line 57
    :cond_0
    return-void
.end method
