.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;
.super Landroid/os/Handler;
.source "FacePrettyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initLoopDoHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0xc9

    const-wide/16 v10, 0x96

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 596
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 600
    :sswitch_0
    sput v4, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectedFaceID(I)V

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveGenderLib()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 604
    const-string v0, "WDY:FacePrettyActivity"

    const-string v1, "faceRectsOnScreen is null so return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v8, :cond_9

    .line 609
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 611
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 613
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 621
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_MAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    .line 628
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0875

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 624
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->man_prarm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v1, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    goto :goto_1

    .line 629
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0876

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 633
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v0, :cond_6

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_WOMAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    goto/16 :goto_0

    .line 636
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->woman_prarm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v1, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    goto/16 :goto_0

    .line 642
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0877

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 645
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v0, :cond_8

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    goto/16 :goto_0

    .line 648
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->other_prarm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v1, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    goto/16 :goto_0

    .line 654
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0879

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 657
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v0, :cond_a

    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    goto/16 :goto_0

    .line 660
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->other_prarm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v1, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    goto/16 :goto_0

    .line 667
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0878

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 670
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v0, :cond_c

    .line 671
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    goto/16 :goto_0

    .line 673
    :cond_c
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->other_prarm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v1, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    goto/16 :goto_0

    .line 683
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 686
    sget v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectedFaceID(I)V

    .line 688
    sget v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 691
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v0, :cond_d

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    goto/16 :goto_0

    .line 694
    :cond_d
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->other_prarm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v1, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    goto/16 :goto_0

    .line 699
    :cond_e
    sput v4, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    .line 700
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectedFaceID(I)V

    .line 701
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 707
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 710
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 713
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 715
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0874

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 716
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const v1, -0xffffeff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectIgvewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 720
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 721
    const-string v0, "Touch mShowEffectIgvew"

    const-string v1, "CREAT_STOP CREAT_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewPosition(Landroid/graphics/Rect;)V

    .line 727
    :cond_f
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0958

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget-object v3, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->FACE_PREETTY:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    const/16 v5, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/common/ui/RotateTips;->show(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/lenovo/scg/common/ui/RotateTips$TipsType;II)V

    .line 734
    .end local v2    # "message":Ljava/lang/String;
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 736
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 737
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 742
    :sswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 745
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 751
    :sswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 753
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 754
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 760
    :sswitch_6
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v8, :cond_14

    .line 765
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    .line 766
    :cond_10
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 767
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 769
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 770
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 773
    :cond_11
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 776
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 778
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 779
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 783
    :cond_12
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_13

    .line 785
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 786
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 788
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 789
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 792
    :cond_13
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 793
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 795
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 796
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 800
    :cond_14
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v8, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 801
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v1, v9, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 803
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 804
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 597
    :sswitch_data_0
    .sparse-switch
        -0xffffeff -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0xcc -> :sswitch_6
    .end sparse-switch
.end method
