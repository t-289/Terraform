resource "aws_api_gateway_deployment" "api_deploy" {
    rest_api_id = var.api_id 
    stage_name  = var.deploy_stage

    lifecycle {
        create_before_destroy = true
    }
    
    depends_on = [ var.deploy_depens_on ]
}