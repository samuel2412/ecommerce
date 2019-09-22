package br.com.samuel.ecommerce.validation;

import java.math.BigDecimal;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.samuel.ecommerce.models.Produto;

public class ProdutoValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Produto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "descricao", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "marca", "field.required");
		
		Produto produto = (Produto) target;

		// produto.getPreco().compareTo(BigInteger.ZERO) > 0
		// java.lang.NumberFormatException

		
			if ( produto.getPreco()==null || !(produto.getPreco().compareTo(BigDecimal.ZERO) > 0)	) {
				errors.rejectValue("preco", "field.required");
			}
		
	}

}