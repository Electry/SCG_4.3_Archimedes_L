.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;
.super Ljava/lang/Object;
.source "BrushEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarUp:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekBarl:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarDown:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    return-void
.end method
