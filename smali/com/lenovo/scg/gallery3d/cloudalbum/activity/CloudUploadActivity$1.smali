.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;
.super Landroid/os/Handler;
.source "CloudUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 243
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 87
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    const/16 v16, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)Z

    .line 88
    const-string v15, "Cloud upload long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 89
    .local v8, "progress":J
    const-string v15, "Cloud upload long max progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    .local v4, "max_progress":J
    const-string v15, "Cloud upload int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "current":I
    const-string v15, "Cloud upload int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 92
    .local v14, "total":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpl-double v15, v16, v18

    if-lez v15, :cond_0

    const-wide/16 v16, 0x32

    div-long v8, v4, v16

    .line 97
    :cond_0
    const-wide v16, 0x3fef5c28f5c28f5cL    # 0.98

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpg-double v15, v16, v18

    if-gez v15, :cond_1

    const-wide/16 v16, 0x31

    mul-long v16, v16, v4

    const-wide/16 v18, 0x32

    div-long v8, v16, v18

    .line 98
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setMax(J)V

    .line 99
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    const-string v15, "Cloud upload long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 103
    .local v10, "size":J
    const-string v15, "Cloud upload long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 104
    .local v6, "max_size":J
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 105
    .local v13, "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 106
    .local v12, "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    if-lt v3, v14, :cond_4

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->resetView(Z)V
    invoke-static {v0, v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)V

    goto/16 :goto_0

    .line 108
    :cond_2
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_3

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 111
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_1

    .line 113
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 115
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_1

    .line 119
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 122
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v4    # "max_progress":J
    .end local v6    # "max_size":J
    .end local v8    # "progress":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    .end local v14    # "total":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 123
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    const/16 v16, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)Z

    .line 124
    const-string v15, "Cloud upload int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 125
    .restart local v3    # "current":I
    const-string v15, "Cloud upload int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 126
    .restart local v14    # "total":I
    const-string v15, "Cloud upload long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 127
    .restart local v10    # "size":J
    const-string v15, "Cloud upload long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 128
    .restart local v6    # "max_size":J
    const-string v15, "Cloud upload long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 129
    .restart local v8    # "progress":J
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 130
    .restart local v13    # "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 131
    .restart local v12    # "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    if-lt v3, v14, :cond_7

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v16

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->resetView(Z)V
    invoke-static {v0, v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)V

    goto/16 :goto_0

    .line 133
    :cond_5
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 136
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_3

    .line 138
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 140
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_3

    .line 150
    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 153
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v6    # "max_size":J
    .end local v8    # "progress":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    .end local v14    # "total":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 154
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v15, "Cloud upload int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 155
    .restart local v3    # "current":I
    const-string v15, "Cloud upload int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 156
    .restart local v14    # "total":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v14    # "total":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 163
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v15, "Cloud upload long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 164
    .restart local v10    # "size":J
    const-string v15, "Cloud upload long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 165
    .restart local v6    # "max_size":J
    const-string v15, "Cloud upload long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 166
    .restart local v8    # "progress":J
    const-string v15, "Cloud upload long max progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 167
    .restart local v4    # "max_progress":J
    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpl-double v15, v16, v18

    if-lez v15, :cond_8

    const-wide/16 v16, 0x32

    div-long v8, v4, v16

    .line 168
    :cond_8
    const-wide v16, 0x3fef5c28f5c28f5cL    # 0.98

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpg-double v15, v16, v18

    if-gez v15, :cond_9

    const-wide/16 v16, 0x31

    mul-long v16, v16, v4

    const-wide/16 v18, 0x32

    div-long v8, v16, v18

    .line 169
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->getMax()J

    move-result-wide v16

    cmp-long v15, v4, v16

    if-eqz v15, :cond_a

    .line 170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setMax(J)V

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 173
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 175
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 176
    .restart local v13    # "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 177
    .restart local v12    # "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    :cond_b
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_c

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 182
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_5

    .line 184
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 186
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_5

    .line 192
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "max_progress":J
    .end local v6    # "max_size":J
    .end local v8    # "progress":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    const/16 v16, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)Z

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->finish()V

    goto/16 :goto_0

    .line 196
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    const/16 v16, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)Z

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 198
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v15, "Cloud upload int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 199
    .restart local v3    # "current":I
    const-string v15, "Cloud upload int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 200
    .restart local v14    # "total":I
    const-string v15, "Cloud upload long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 201
    .restart local v10    # "size":J
    const-string v15, "Cloud upload long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 202
    .restart local v6    # "max_size":J
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 203
    .restart local v13    # "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 204
    .restart local v12    # "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_10

    .line 205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/math/BigDecimal;

    float-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v18, 0x1

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const-string v15, "Cloud upload long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 222
    .restart local v8    # "progress":J
    const-string v15, "Cloud upload long max progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 223
    .restart local v4    # "max_progress":J
    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpl-double v15, v16, v18

    if-lez v15, :cond_d

    const-wide/16 v16, 0x32

    div-long v8, v4, v16

    .line 224
    :cond_d
    const-wide v16, 0x3fef5c28f5c28f5cL    # 0.98

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpg-double v15, v16, v18

    if-gez v15, :cond_e

    const-wide/16 v16, 0x31

    mul-long v16, v16, v4

    const-wide/16 v18, 0x32

    div-long v8, v16, v18

    .line 225
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->getMax()J

    move-result-wide v16

    cmp-long v15, v4, v16

    if-eqz v15, :cond_f

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setMax(J)V

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 229
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    const v16, 0x7f0f0257

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setText(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setResultFail()V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailHint:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailLogo:Landroid/view/View;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 206
    .end local v4    # "max_progress":J
    .end local v8    # "progress":J
    :cond_10
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_11

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 209
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_6

    .line 211
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 213
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_6

    .line 240
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v6    # "max_size":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    .end local v14    # "total":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->finish()V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
