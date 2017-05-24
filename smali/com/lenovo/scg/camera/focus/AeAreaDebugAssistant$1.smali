.class Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;
.super Ljava/lang/Object;
.source "AeAreaDebugAssistant.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getSeekBar()Landroid/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 159
    const-string v0, "AeAreaDebugAssistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged() arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v0, 0xa

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    # setter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I
    invoke-static {v0, p2}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$002(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;I)I

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    # getter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$000(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSizeRate:F
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$102(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;F)F

    .line 163
    const-string v0, "AeAreaDebugAssistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged() mAreaSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    # getter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$000(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    # getter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$200(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    # getter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$200(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 172
    const-string v0, "AeAreaDebugAssistant"

    const-string/jumbo v1, "onStartTrackingTouch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 178
    const-string v0, "AeAreaDebugAssistant"

    const-string/jumbo v1, "onStopTrackingTouch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
