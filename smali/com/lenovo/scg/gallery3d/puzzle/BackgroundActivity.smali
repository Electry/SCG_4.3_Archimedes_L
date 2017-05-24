.class public Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;
.super Landroid/app/Activity;
.source "BackgroundActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAME_INDEX_KEY:Ljava/lang/String; = "frame_index"

.field public static final FRAME_RES_KEY:Ljava/lang/String; = "frame_res"


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mFrameGrid:Landroid/widget/GridView;

.field private mFrameIamgeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameImageAdapter:Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;

.field private mThumbIds:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mThumbIds:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->finish()V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f040134

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->setContentView(I)V

    .line 45
    const v3, 0x7f100816

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameGrid:Landroid/widget/GridView;

    .line 46
    const v3, 0x7f1002ce

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mCancel:Landroid/widget/Button;

    .line 47
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameIamgeDatas:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "frame_index"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "frameIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mThumbIds:[Ljava/lang/Integer;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 51
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;-><init>()V

    .line 52
    .local v0, "frameImageData":Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mThumbIds:[Ljava/lang/Integer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->setThumbnailRes(I)V

    .line 53
    if-ne v2, v1, :cond_0

    .line 54
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->setSelected(Z)V

    .line 58
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameIamgeDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->setSelected(Z)V

    goto :goto_1

    .line 60
    .end local v0    # "frameImageData":Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    :cond_1
    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameImageAdapter:Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;

    .line 61
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameImageAdapter:Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameIamgeDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->setFrameImageDataList(Ljava/util/ArrayList;)V

    .line 62
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameImageAdapter:Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "resultData":Landroid/content/Intent;
    const-string v2, "frame_res"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->mFrameIamgeDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->getThumbnailRes()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "frame_index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/BackgroundActivity;->finish()V

    .line 73
    return-void
.end method
