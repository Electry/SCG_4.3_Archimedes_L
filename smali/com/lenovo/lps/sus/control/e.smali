.class Lcom/lenovo/lps/sus/control/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/e;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/e;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;Z)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/e;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->b(Lcom/lenovo/lps/sus/control/SUSPromptActivity;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
