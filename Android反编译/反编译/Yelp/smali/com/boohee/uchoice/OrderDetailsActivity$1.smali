.class Lcom/boohee/uchoice/OrderDetailsActivity$1;
.super Ljava/lang/Object;
.source "OrderDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderDetailsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$1;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$1;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #calls: Lcom/boohee/uchoice/OrderDetailsActivity;->cancelOrder()V
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$000(Lcom/boohee/uchoice/OrderDetailsActivity;)V

    .line 91
    return-void
.end method
