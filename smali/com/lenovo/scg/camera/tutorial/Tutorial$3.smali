.class Lcom/lenovo/scg/camera/tutorial/Tutorial$3;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/tutorial/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/Tutorial;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    # getter for: Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->access$200(Lcom/lenovo/scg/camera/tutorial/Tutorial;)Lcom/lenovo/scg/camera/tutorial/TutorialController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10098e

    if-ne v1, v2, :cond_2

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->hideTutorialWindow()V

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    # getter for: Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->access$200(Lcom/lenovo/scg/camera/tutorial/Tutorial;)Lcom/lenovo/scg/camera/tutorial/TutorialController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/tutorial/TutorialController;->hideTutorialWindow(Z)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100990

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->hideTutorialWindow()V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    # getter for: Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->access$200(Lcom/lenovo/scg/camera/tutorial/Tutorial;)Lcom/lenovo/scg/camera/tutorial/TutorialController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialController;->changeFunction()V

    .line 151
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "preferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->FIRST_CAMERA_FUNCTION_CHANGED:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    # getter for: Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->access$200(Lcom/lenovo/scg/camera/tutorial/Tutorial;)Lcom/lenovo/scg/camera/tutorial/TutorialController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/lenovo/scg/camera/tutorial/TutorialController;->setFocusAndFaceCanVisible(Z)V

    goto :goto_0
.end method
