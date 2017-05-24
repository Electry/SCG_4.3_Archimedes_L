.class Lcom/lenovo/lps/sus/control/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/b;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/b;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/b;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
