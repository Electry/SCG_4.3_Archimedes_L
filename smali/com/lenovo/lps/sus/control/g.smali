.class Lcom/lenovo/lps/sus/control/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUSNotificationActivity popupPromptionDialog onDismiss myCustomDialog="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->c()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; myContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->c(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->c(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/g;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->c(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
