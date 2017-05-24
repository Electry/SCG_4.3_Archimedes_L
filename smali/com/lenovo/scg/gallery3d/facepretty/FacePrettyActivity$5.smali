.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->creatActionListener()V
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
    .line 1011
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnArchSeekBarViewTouched(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    move-result-object v0

    const v1, 0x7f0207cd

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setArchSeekBarViewImageResource(I)V

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    move-result-object v0

    const v1, 0x7f02054a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setArchSeekBarViewImageResource(I)V

    goto :goto_0
.end method

.method public OnRotationChangeFinished(F)V
    .locals 3
    .param p1, "rotationValue"    # F

    .prologue
    .line 1036
    const-string v0, "WDY:FacePrettyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRotationChangeFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateAllParamPreference()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 1038
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateEffectParamPreference()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 1039
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startEffectThread()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 1040
    return-void
.end method

.method public OnRotationChanged(F)V
    .locals 2
    .param p1, "rotationValue"    # F

    .prologue
    .line 1027
    const-string v0, "WDY:FacePrettyActivity"

    const-string v1, "OnRotationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectWhatKey()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateSelectWhatKey(Ljava/lang/String;F)V
    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;F)V

    .line 1030
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 1031
    return-void
.end method
