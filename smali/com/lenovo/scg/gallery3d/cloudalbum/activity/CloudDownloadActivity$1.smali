.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;
.super Landroid/os/Handler;
.source "CloudDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    sparse-switch v15, :sswitch_data_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 83
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 84
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    const/16 v16, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;Z)Z

    .line 85
    const-string v15, "Cloud download long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 86
    .local v8, "progress":J
    const-string v15, "Cloud download long max progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 87
    .local v4, "max_progress":J
    const-string v15, "Cloud download int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 88
    .local v3, "current":I
    const-string v15, "Cloud download int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 89
    .local v14, "total":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 90
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 93
    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpl-double v15, v16, v18

    if-lez v15, :cond_1

    const-wide/16 v16, 0x32

    div-long v8, v4, v16

    .line 94
    :cond_1
    const-wide v16, 0x3fef5c28f5c28f5cL    # 0.98

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v8

    move-wide/from16 v18, v0

    cmpg-double v15, v16, v18

    if-gez v15, :cond_2

    const-wide/16 v16, 0x31

    mul-long v16, v16, v4

    const-wide/16 v18, 0x32

    div-long v8, v16, v18

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setMax(J)V

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    const-string v15, "Cloud download long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 100
    .local v10, "size":J
    const-string v15, "Cloud download long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 101
    .local v6, "max_size":J
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 102
    .local v13, "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 103
    .local v12, "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 116
    if-lt v3, v14, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    const v16, 0x7f0f0250

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setText(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setResultReset()V

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailAgain:Landroid/widget/Button;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailHint:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailCancel:Landroid/widget/Button;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailLogo:Landroid/view/View;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 105
    :cond_3
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_4

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 108
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_1

    .line 110
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 112
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_1

    .line 126
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v4    # "max_progress":J
    .end local v6    # "max_size":J
    .end local v8    # "progress":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    .end local v14    # "total":I
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 127
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    const/16 v16, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;Z)Z

    .line 128
    const-string v15, "Cloud download int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .restart local v3    # "current":I
    const-string v15, "Cloud download int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 130
    .restart local v14    # "total":I
    const-string v15, "Cloud download long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 131
    .restart local v10    # "size":J
    const-string v15, "Cloud download long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 132
    .restart local v6    # "max_size":J
    const-string v15, "Cloud download long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 133
    .restart local v8    # "progress":J
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 134
    .restart local v13    # "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 135
    .restart local v12    # "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    if-lt v3, v14, :cond_7

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v16

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->resetView(Z)V
    invoke-static {v0, v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;Z)V

    goto/16 :goto_0

    .line 137
    :cond_5
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 140
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_2

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 144
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_2

    .line 154
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 157
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v6    # "max_size":J
    .end local v8    # "progress":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    .end local v14    # "total":I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 158
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v15, "Cloud download int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 159
    .restart local v3    # "current":I
    const-string v15, "Cloud download int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 160
    .restart local v14    # "total":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 166
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v14    # "total":I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 167
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v15, "Cloud download long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 168
    .restart local v10    # "size":J
    const-string v15, "Cloud download long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 169
    .restart local v6    # "max_size":J
    const-string v15, "Cloud download long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 170
    .restart local v8    # "progress":J
    const-string v15, "Cloud download long max progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 171
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

    .line 172
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

    .line 173
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->getMax()J

    move-result-wide v16

    cmp-long v15, v4, v16

    if-eqz v15, :cond_a

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setMax(J)V

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 177
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 179
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 180
    .restart local v13    # "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 181
    .restart local v12    # "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_b

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 183
    :cond_b
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_c

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 186
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_4

    .line 188
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 190
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_4

    .line 196
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "max_progress":J
    .end local v6    # "max_size":J
    .end local v8    # "progress":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    const/16 v16, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;Z)Z

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->finish()V

    goto/16 :goto_0

    .line 200
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    const/16 v16, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->isFinished:Z
    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;Z)Z

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 202
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v15, "Cloud download int current key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 203
    .restart local v3    # "current":I
    const-string v15, "Cloud download int total key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 204
    .restart local v14    # "total":I
    const-string v15, "Cloud download long size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 205
    .restart local v10    # "size":J
    const-string v15, "Cloud download long max size key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 206
    .restart local v6    # "max_size":J
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 207
    .restart local v13    # "temp_size":F
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 v16, 0x3

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 208
    .restart local v12    # "temp_max_size":F
    const-wide/16 v16, 0x400

    cmp-long v15, v6, v16

    if-gez v15, :cond_10

    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_b:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotalSize:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailCurrent:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainTotal:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainFinished:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

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

    .line 225
    const-string v15, "Cloud download long progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 226
    .restart local v8    # "progress":J
    const-string v15, "Cloud download long max progress key"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 227
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

    .line 228
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

    .line 229
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->getMax()J

    move-result-wide v16

    cmp-long v15, v4, v16

    if-eqz v15, :cond_f

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setMax(J)V

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 233
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgress(J)V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v15

    long-to-int v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    const v16, 0x7f0f0251

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setText(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setResultFail()V

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailAgain:Landroid/widget/Button;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailHint:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailCancel:Landroid/widget/Button;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailLogo:Landroid/view/View;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 210
    .end local v4    # "max_progress":J
    .end local v8    # "progress":J
    :cond_10
    const-wide/32 v16, 0x100000

    cmp-long v15, v6, v16

    if-gez v15, :cond_11

    .line 211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_k:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v13, v15

    .line 213
    const/high16 v15, 0x44800000    # 1024.0f

    div-float/2addr v12, v15

    goto/16 :goto_5

    .line 215
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mDetailUnit:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->char_unit_m:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v13, v15

    .line 217
    const/high16 v15, 0x49800000    # 1048576.0f

    div-float/2addr v12, v15

    goto/16 :goto_5

    .line 244
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "current":I
    .end local v6    # "max_size":J
    .end local v10    # "size":J
    .end local v12    # "temp_max_size":F
    .end local v13    # "temp_size":F
    .end local v14    # "total":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->finish()V

    goto/16 :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_5
        0xc -> :sswitch_1
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x27 -> :sswitch_6
    .end sparse-switch
.end method
