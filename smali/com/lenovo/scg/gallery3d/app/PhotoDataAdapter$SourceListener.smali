.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    .line 1005
    :cond_0
    return-void
.end method
