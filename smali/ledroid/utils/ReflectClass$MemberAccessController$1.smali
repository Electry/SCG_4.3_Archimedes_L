.class Lledroid/utils/ReflectClass$MemberAccessController$1;
.super Ljava/lang/Object;
.source "ReflectClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/utils/ReflectClass$MemberAccessController;->setAccessible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lledroid/utils/ReflectClass$MemberAccessController;


# direct methods
.method constructor <init>(Lledroid/utils/ReflectClass$MemberAccessController;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lledroid/utils/ReflectClass$MemberAccessController$1;->this$0:Lledroid/utils/ReflectClass$MemberAccessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lledroid/utils/ReflectClass$MemberAccessController$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lledroid/utils/ReflectClass$MemberAccessController$1;->this$0:Lledroid/utils/ReflectClass$MemberAccessController;

    # getter for: Lledroid/utils/ReflectClass$MemberAccessController;->mMember:Ljava/lang/reflect/AccessibleObject;
    invoke-static {v0}, Lledroid/utils/ReflectClass$MemberAccessController;->access$000(Lledroid/utils/ReflectClass$MemberAccessController;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lledroid/utils/ReflectClass$MemberAccessController$1;->this$0:Lledroid/utils/ReflectClass$MemberAccessController;

    # getter for: Lledroid/utils/ReflectClass$MemberAccessController;->mMember:Ljava/lang/reflect/AccessibleObject;
    invoke-static {v0}, Lledroid/utils/ReflectClass$MemberAccessController;->access$000(Lledroid/utils/ReflectClass$MemberAccessController;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    iget-object v1, p0, Lledroid/utils/ReflectClass$MemberAccessController$1;->this$0:Lledroid/utils/ReflectClass$MemberAccessController;

    # getter for: Lledroid/utils/ReflectClass$MemberAccessController;->mAccessible:Ljava/lang/Boolean;
    invoke-static {v1}, Lledroid/utils/ReflectClass$MemberAccessController;->access$100(Lledroid/utils/ReflectClass$MemberAccessController;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 210
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
