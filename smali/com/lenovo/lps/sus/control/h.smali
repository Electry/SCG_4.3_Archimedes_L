.class Lcom/lenovo/lps/sus/control/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "user finishUpdateAffair id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->d(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/h;->a:Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->d(Lcom/lenovo/lps/sus/control/SUSNotificationActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a(Ljava/lang/Integer;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
