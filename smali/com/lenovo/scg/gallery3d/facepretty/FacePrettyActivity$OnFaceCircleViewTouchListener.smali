.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFaceCircleViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCircleViewTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v4, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeAfterImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageViewVisibility(Z[Landroid/widget/ImageView;)V
    invoke-static {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z[Landroid/widget/ImageView;)V

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v5, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->afterTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v4

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setTextViewVisibility(Z[Landroid/widget/TextView;)V
    invoke-static {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z[Landroid/widget/TextView;)V

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v4, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeAfterImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageViewVisibility(Z[Landroid/widget/ImageView;)V
    invoke-static {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z[Landroid/widget/ImageView;)V

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v5, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->afterTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v4

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setTextViewVisibility(Z[Landroid/widget/TextView;)V
    invoke-static {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z[Landroid/widget/TextView;)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
